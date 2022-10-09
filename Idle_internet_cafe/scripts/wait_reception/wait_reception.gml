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
				if _inst.occupied == false
				{
					to_pc_id = _inst;
					_inst.occupied = true;
					with instance_create_layer(x,y,"text_money",obj_show_money)
					{
						money_num = obj_controller.reception_money;
					}
					obj_controller.gold += obj_controller.reception_money;
					break;
				}
			}				
		}	
		// if no pc available, go back
		else
		{
			state = "go_home";
		}
	}
}