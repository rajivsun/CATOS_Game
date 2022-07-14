// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function write_materials(_item){
	
	draw_line_width(spr_big_x-100,spr_big_y+190,spr_big_x + 100,spr_big_y+190,1);
	draw_set_font(ft_chinese);
	draw_set_valign(fa_top);draw_set_halign(fa_left);
	if obj_main.language == "chinese" draw_text(spr_big_x-100,spr_big_y + 200,"需要:");
	else if obj_main.language == "english" draw_text(spr_big_x-100,spr_big_y + 200,"Require:");
	//draw_text(spr_big_x-100,spr_big_y + 200,"需要:");
	for (var ii = 0;ii< array_length_1d(_item.component);ii++){
		var _comp = string(_item.component[ii].name);
		draw_text(spr_big_x-100,spr_big_y+ii*40 + 240,_comp);
	}
}


function check_materials(_item){
	
	// check if there is enough material to craft
	var check = array_length_1d(_item.component);
	var count = 0;
	for (var ii = 0;ii< array_length_1d(_item.component);ii++){	

		var _comp = _item.component[ii];		//show_debug_message(_comp)
		for (var xx=0;xx<obj_inventory.inv_slot;xx++){
			if obj_inventory.ds_inventory[# 0,xx] == _comp
			&& obj_inventory.ds_inventory[# 1,xx]>0{
				count ++;
				break;
			}
		}
	}	
	if count == check {
		
		// take away all the necessary materials
		for (var ii = 0;ii< array_length_1d(_item.component);ii++){				
		var _comp = _item.component[ii];
							
			for (var yy=0;yy<obj_inventory.inv_slot;yy++){
				if obj_inventory.ds_inventory[# 0,yy] == _comp 
				&& obj_inventory.ds_inventory[# 1,yy]>0{
					obj_inventory.ds_inventory[# 1,yy] --;
					if obj_inventory.ds_inventory[# 1,yy] == 0
						obj_inventory.ds_inventory[# 0,yy] = -99;
					break;
				//show_debug_message(yy)
				}
			}
		}
		return true
	}
	else return false

	
}