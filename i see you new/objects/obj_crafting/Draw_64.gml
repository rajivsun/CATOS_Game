/// @description Insert description here
// You can write your code in this editor
//if pause() exit

if room == rm_home_pre exit;
if show_inventory{
	
	draw_set_color(c_black); draw_set_alpha(0.9)
	draw_rectangle(0,0,gui_width,gui_height,false);
	draw_set_color(c_white); draw_set_alpha(1)

	draw_sprite_ext(spr_UI,0,inv_UI_x,inv_UI_y,scale,scale,0,c_white,alpha);

	var ii,ix,iy,xx,yy,iitem,inv_grid,sx,sy,inum;
	ii = 0;ix = 0;iy = 0;inv_grid = ds_inventory;
	repeat(inv_slot){
		//x,y location for slot
		xx = slot_x + (cell_size + x_buffer)*ix*scale;
		yy = slot_y + (cell_size + y_buffer)*iy*scale;
	
		//item
		iitem = inv_grid[# 0,ii];
		inum = inv_grid[# 1,ii];
		//
		sx = (iitem mod 10)*32;
		sy = (iitem div 10)*32;
	
		//draw slot highlight
		if ii == selected_slot{
		draw_set_alpha(0.2);
		draw_rectangle(xx,yy,xx+cell_size*scale,yy+cell_size*scale,false);
		draw_set_alpha(1);
		}

		if ii == picked_slot{
		draw_set_alpha(0.2);
		draw_rectangle(xx,yy,xx+cell_size*scale,yy+cell_size*scale,false);
		draw_set_alpha(1);
		}
		
		//draw slot
		draw_sprite_ext(spr_inv_slot,0,xx,yy,scale,scale,0,c_white,1);
			
		//draw_sprite_part_ext(spr_inv_items,0,sx,sy,32,32,xx,yy,scale*cell_size/32,scale*cell_size/32,c_white,1);
		
		spr_it = object_get_sprite(iitem)
		var item_width = sprite_get_width(spr_it);
		var item_height = sprite_get_height(spr_it);
		
		// draw item and details
		if inum > 0 
		{
			draw_sprite_part_ext(spr_it,0,0,0,item_width,item_height,xx,yy,scale*cell_size/item_width,scale*cell_size/item_height,c_white,1);
			if picked_slot == ii
			{
				draw_sprite_ext(spr_it,0,spr_big_x,spr_big_y,
				2*scale*cell_size/item_width,2*scale*cell_size/item_height,0,c_white,1);
				draw_set_font(ft_chineseBIG);
				draw_set_valign(fa_top);draw_set_halign(fa_center);
				draw_text(spr_big_x,spr_big_y+130,iitem.name);

				write_materials(iitem)
				
				//draw craft icon
				draw_sprite_ext(spr_crafticon,0,1100,450,4,4,0,c_white,1);
				
				if keyboard_check_pressed(ord("C"))
				{
					if check_materials(iitem) == true
					{
						//show_debug_message("yes")
						show_inventory = false;
						virtual_key_delete(vk_c);
						virtual_key_delete(esc);
						for (var i = 0; i < instance_number(iitem); ++i;)
						{
							if instance_find(iitem,i).pickable == false
							{
								itembox(instance_find(iitem,i),true);
								//show_debug_message("sze");						
								break;
							}
						}
						//pickup item/ressources
						if object_get_parent(iitem) == obj_resource
							pickupressource(iitem)
						else pickupitem(iitem)
						//show_debug_message(obj_carbatteryfull);
						//show_debug_message(obj_inventory.ds_inventory[# 0,1]);
					}
				}
			}
		}
		//increment
		ii ++;
		ix = ii mod inv_slot_width;
		iy = ii div inv_slot_width;
	}
	
	// draw close icon
	draw_sprite_ext(spr_exit,1,1100,50,2,2,0,c_white,1);
}

//draw_text(50,200,selected_slot);draw_text(100,200,picked_slot);