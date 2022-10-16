// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wait_reception(){
	
	wait_count += 1;
	if wait_count >= reception_cd
	{
			
		// check pc availability
		if obj_controller.pc_occupy_num < instance_number(obj_stand_pc)
		{
			state = "to_pc";
			for (var i = 0; i < instance_number(obj_stand_pc); ++i;)
			{
				var _inst = instance_find(obj_stand_pc,i);
				// if player found a pc
				if _inst.occupied == false
				{
					to_pc_id = _inst;
					_inst.occupied = true;
					show_money(obj_reception.money_unit);
					
					path_start(_inst.path,walk_speed,path_action_stop,false);
					break;
				}
			}				
		}	
		// if no pc available, go back
		else
		{
			state = "go_home";
		}
		
		// delete from waiting list
		ds_list_delete(obj_reception.list_customer,0);
		for (var i=0;i<ds_list_size(obj_reception.list_customer);i++)
		{
			var _inst = obj_reception.list_customer[| i];
			_inst.alarm[0] = 50;
			_inst.speed = 1;
			_inst.direction = 90;
		}
	}
}