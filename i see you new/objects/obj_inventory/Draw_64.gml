/// @description Insert description here
// You can write your code in this editor

if room == rm_home_pre exit;
if pause() exit;

if obj_main.language == "chinese"
{
	var _current_gear = "当前装备";
	var _all_gear = "所有装备";
	var _damage = "伤害";
	var _magazine = "弹夹";
	var _reload = "装弹";
	var _nomap = "尚未获取地图";
	var _current_mission = "当前任务：";
	var _choose_item = "选择对应物品"
	var _usesign_index = 0;
	var _map_index = 0;
}
else if obj_main.language == "english"
{
	var _current_gear = "Current gear";
	var _all_gear = "All gears";
	var _damage = "Damage";
	var _magazine = "Magazine";
	var _reload = "Reload";
	var _nomap = "You haven't got the map";
	var _current_mission = "Current_mission";
	var _choose_item = "Choose the corresponding item"
	var _usesign_index = 1;
	var _map_index = 1;
}

if show_inventory{
	
	draw_set_color(c_black); draw_set_alpha(0.9)
	draw_rectangle(0,0,gui_width,gui_height,false);
	draw_set_color(c_white); draw_set_alpha(1)

	if category == 0 // inventory
	{
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
			
			spr_it = object_get_sprite(iitem);
			var item_width = sprite_get_width(spr_it);
			var item_height = sprite_get_height(spr_it);
			
			// if there is item to draw
			if inum > 0 {
				draw_sprite_part_ext(spr_it,0,0,0,item_width,item_height,
				xx,yy,scale*cell_size/item_width,scale*cell_size/item_height,c_white,1);
				draw_set_font(ft_numberSSMALL);
				draw_set_valign(fa_top);draw_set_halign(fa_left);
				
				if picked_slot == ii{
					draw_sprite_ext(spr_it,0,spr_big_x,spr_big_y+30,
					2*scale*cell_size/item_width,2*scale*cell_size/item_height,0,c_white,1);
					
					draw_set_valign(fa_top);draw_set_halign(fa_center);
					draw_set_font(ft_chinese);
					draw_text(spr_big_x,spr_big_y+150,iitem.name);
					if iitem.description != false
						draw_text(spr_big_x,spr_big_y + 190,iitem.description);
						
					if check_key == true{
						draw_sprite_ext(spr_usesign,_usesign_index,spr_big_x,spr_big_y+300,2,2,0,c_white,1);
						check_keys_whole(iitem);
					}
					
					else if iitem.consumable == true{
						draw_sprite_ext(spr_usesign,_usesign_index,spr_big_x,spr_big_y+300,2,2,0,c_white,1);
						if keyboard_check_pressed(ord("U")){
							audio_play_sound(sd_grab,1,false);
							consume(iitem,ii)
						}
					}
				}
				
				draw_set_font(ft_numberSSMALL);
				draw_set_valign(fa_top);draw_set_halign(fa_left);
				draw_text(xx+1,yy,inum);
			}
			
			//increment
			ii ++;
			ix = ii mod inv_slot_width;
			iy = ii div inv_slot_width;
		}	
		if instance_exists(obj_player)
		{
			if obj_player.sonar
			{
				draw_sprite_ext(spr_sonar,0,220,570,1,1,0,c_white,1)
			}
		}
	}
		
	if category == 1{ // weapons
				
		draw_set_font(ft_chinese);
		draw_set_valign(fa_top);draw_set_halign(fa_left);
		
		draw_text(170,w_slot1y-70,_current_gear)
		draw_text(170,310,_all_gear)
		//draw_sprite_ext(spr_inv_slot,0,w_slot2x,w_slot1y,scale,scale,0,c_white,1);
		
		var ii,ix,iy,xx,yy,iitem,inv_grid,sx,sy,inum;
		ii = 0;ix = 0;iy = 0;inv_grid = ds_weapon_ready;
		
		var aa = 0;
		repeat(6){
			
			xx = 170 + (cell_size + x_buffer)*ix*scale;
			yy = 370 + (cell_size + y_buffer)*iy*scale;
			
			//draw slot

			draw_sprite_ext(spr_inv_slot,0,xx,yy,scale,scale,0,c_white,1);
			
			aa ++;
			ix = aa mod 3;
			iy = aa div 3;
		}
		repeat(2){
			iitem = inv_grid[# 0,ii];
			inum = inv_grid[# 1,ii];
			spr_it = object_get_sprite(iitem)
			var item_width = sprite_get_width(spr_it);
			var item_height = sprite_get_height(spr_it);
			draw_sprite_ext(spr_inv_slot,0,w_slot1x+ii*150,w_slot1y,scale,scale,0,c_white,1);
			if inum > 0{
				var subimg = iitem.ac_total;
				if iitem.ac_total == 3 && ds_list_size(iitem.ac) < 2 subimg = 7	
				draw_sprite_part_ext(spr_it,0,0,0,item_width,item_height,
				w_slot1x + ii*150,w_slot1y,scale*cell_size/item_width,scale*cell_size/item_height,c_white,1);
				
				//draw big picture
				if picked_slot == ii{
					var _x = spr_big_x-50;var _y = spr_big_y+50;
					var _scale = 4*scale*cell_size/item_width
					
					draw_sprite_ext(spr_it,subimg,_x,_y,_scale,_scale,0,c_white,1);
					
					draw_set_font(ft_chinese);
					draw_set_valign(fa_top);draw_set_halign(fa_center);
					draw_text(spr_big_x,spr_big_y+200,iitem.name);
					
					var str = ""
					for (var i = 0;i<ds_list_size(iitem.ac);i++){
						str += "+" + iitem.ac[| i]
					}
					
					draw_set_font(ft_chinese);
					draw_set_valign(fa_middle);draw_set_halign(fa_center);
					draw_set_color(c_green)
					draw_text(spr_big_x+210,spr_big_y + 180,str);
					draw_set_color(c_white)
						
					draw_line_width(spr_big_x-280,spr_big_y+255,spr_big_x+250,spr_big_y+255,1)
					draw_text(spr_big_x -250,spr_big_y+280,_damage);
					draw_text(spr_big_x -50,spr_big_y+280,_magazine);
					draw_text(spr_big_x +150,spr_big_y+280,_reload)
					
					draw_text(spr_big_x-180,spr_big_y+280,iitem.damage*100);
					draw_text(spr_big_x +20,spr_big_y+280,iitem.defaut_ammo);
					draw_text(spr_big_x +220,spr_big_y+280,iitem.reload_time);
				}			
			}
			
			//draw slot highlight
			if ii == selected_slot{
			draw_set_alpha(0.2);
			draw_rectangle(w_slot1x+150*ii,w_slot1y,w_slot1x+150*ii+cell_size*scale,
			w_slot1y+cell_size*scale,false);
			draw_set_alpha(1);
			}

			if ii == picked_slot{
			draw_set_alpha(0.2);
			draw_rectangle(w_slot1x+150*ii,w_slot1y,w_slot1x+150*ii+cell_size*scale,
			w_slot1y+cell_size*scale,false);
			draw_set_alpha(1);
			}		
						
			ii++;
		}	
	}
		
	if category == 2{ //map
		
		if obj_controller.map == false{
			draw_set_font(ft_chineseBIG);
			draw_set_valign(fa_top);draw_set_halign(fa_center);
			draw_text(640,200,_nomap);
		}
		else{
			var x_l = obj_player.x - obj_homeF1.x;var y_l = obj_player.y - obj_homeF1.y;
			var x_l2 = obj_player.x - obj_homeF2.x; var y_l2 = obj_player.y-obj_homeF2.y;
		
			if  obj_player.x < 1800 && obj_player.y <1200{
				draw_sprite_ext(spr_homeF1_map,_map_index,280,150,0.7,0.7,0,c_white,1);
				draw_circle_color(280+x_l*0.7,150+y_l*0.7,15,c_lime,c_lime,0);
			}
			else if obj_player.x >1800 && obj_player.y <1200{
				draw_sprite_ext(spr_homeF2_map,_map_index,480,200,0.7,0.7,0,c_white,1);
				draw_circle_color(480+x_l2*0.7,200+y_l2*0.7,15,c_lime,c_lime,0);
			}
			else{
				draw_set_font(ft_chineseBIG);
				draw_set_valign(fa_top);draw_set_halign(fa_center);
				draw_text(640,200,_nomap);
			}
		}
	}
	
	if category == 3{ //mission
		
		draw_set_valign(fa_top);draw_set_halign(fa_left);
		draw_set_font(ft_numberBIG);
		draw_text(30+150,180+50,"•" );
		draw_set_font(ft_chineseBIG);
		draw_text(30+150,140+50,_current_mission)
		draw_text(60+150,200+50,string(obj_controller.mission[obj_controller.current_mission]));
	}
		
	if category == 4{ //journal
		draw_sprite_ext(spr_journal,0,640,380,3.8,3.8,0,c_white,0.5);
		
		var str = journal[| current_page];
		draw_set_font(ft_chinese);
		draw_set_valign(fa_middle);draw_set_halign(fa_center);
		draw_text_ext(640,300,str,string_height("M"),1000);
		
		draw_text(640,450,string(current_page+1)+" / " +string(ds_list_size(journal)));
		draw_sprite_ext(spr_next,0,640+150,450,2,2,0,c_white,1);
		draw_sprite_ext(spr_next,0,640-150,450,2,2,180,c_white,1);		
	}
		
	// draw UI
	draw_sprite_ext(spr_UI,category,inv_UI_x,inv_UI_y,scale,scale,0,c_white,alpha);
	// draw bag icon
	draw_sprite_ext(spr_icon_bag,1,1200,200,3,3,0,c_white,1);
	
	//if it is checking keys then dont show other areas
	if check_key == true{
		draw_rectangle_color(300,0,1300,110,c_black,c_black,c_black,c_black,false)
		draw_set_valign(fa_top);draw_set_halign(fa_center);
		draw_set_font(ft_chinese);
		draw_text(640,50,_choose_item);
		// draw close icon
		draw_sprite_ext(spr_exit,1,1100,50,2,2,0,c_white,1);
	}
}

else {
	// draw bag icon
	draw_sprite_ext(spr_icon_bag,0,1200,200,3,3,0,c_white,1);
}
//draw_text(50,200,selected_slot);draw_text(100,200,picked_slot);