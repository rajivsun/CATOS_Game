// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bird_ui(){
	
	draw_set_alpha(0.8*bird_ui_alpha); // draw fond
	draw_roundrect_color_ext(20,1000,1080,2080,20,20,c_white,c_white,false);
	draw_set_alpha(1); // draw darker icon

	draw_set_alpha(bird_ui_alpha);
	draw_roundrect_color_ext(50,1020,1050,1100,20,20,c_white,c_white,false); // draw title
	draw_set_font(ft_info_num_big);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var title = ["Bird","鸟"];
	draw_text_color(150,1065,title[language],c_black,c_black,c_black,c_black,bird_ui_alpha);
	
	for (var i=0;i<5;i++)
	{
		var ii = i + bird_ui_page*5;
		var button_x = 915,button_y = 1170+150*i + 45;
		draw_roundrect_color_ext(50,1150+150*i,1050,1280+150*i,20,20,c_white,c_white,false);
		draw_sprite_ext(ls_bird[ii].sprite,0,140,1220+150*i,-2,2,0,c_white,bird_ui_alpha);
		draw_set_font(ft_info_num);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_text_color(250,1155+150*i,ls_bird[ii]._name[language],c_black,c_black,c_black,c_black,bird_ui_alpha);
		
		 // if already have this bird
		if instance_exists(ls_bird[ii].object)
		{
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			// if got enough money to upgrade 
			if birb >= ls_bird[ii].upgrade_need
			{
				if click_button(800,1170+150*i,1030,1260+150*i) && open_bird_ui
				{   // ------------------- upgrade the bird --------------------
					alarm[0] = 10;
					button_w = 230*0.9;button_h=90*0.9;
					birb -= ls_bird[ii].upgrade_need; // minus the cost
					obj_camera.y_to = ls_bird[ii].object.y-obj_camera.view_h/4; // set camera to the current bird
					ls_bird[ii].level += 1;
					ls_bird[ii].upgrade_need += power(ls_bird[ii].level,2);
					ls_bird[ii].birb_per_sec += 1*ls_bird[ii].birb_coef*ls_bird[ii].level;		
					clicked = i;
					with ls_bird[ii].object
					{
						y = y_original -10;
						alarm[2] = 10;
						part_particles_create(obj_particle.particle_system,x,y,obj_particle.particletype_spark,20);
					}
					//instance_create_layer(ls_bird[i].object.x,ls_bird[i].object.y,"effect",obj_levelup_effect);
					part_particles_create(obj_particle.particle_system_gui,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_particle.particletype_shine,5);
				}
				if clicked = i
					draw_roundrect_color(button_x-button_w/2,button_y-button_h/2,button_x+button_w/2,button_y+button_h/2,#00A651,#00A651,false);//draw upgrade button
				else
					draw_roundrect_color(button_x-230/2,button_y-90/2,button_x+230/2,button_y+90/2,#00A651,#00A651,false);//draw upgrade button
			}
			else
			{							
				draw_roundrect_color(button_x-230/2,button_y-90/2,button_x+230/2,button_y+90/2,c_ltgray,c_ltgray,false);//draw gray button
			}
	
			draw_set_font(ft_info_num_small);
			var upgrade = ["Upgrade","升级"];
			draw_text_color(920,1213+150*i,upgrade[language]+"\n" + string(money_conversion(ls_bird[ii].upgrade_need)),c_white,c_white,c_white,c_white,bird_ui_alpha); // upgrade text
			//draw_text_color(920,1225+150*i,ls_bird[i].upgrade_need,c_white,c_white,c_white,c_white,1); // upgrade need money
			draw_set_halign(fa_left);
			var _level = ["Level ","等级 "];
			draw_text_color(250,1218+150*i,_level[language]+string(ls_bird[ii].level),c_black,c_black,c_black,c_black,bird_ui_alpha);
			var _birb = ["Birb : ","小鸟币 : "];
			draw_text_color(250,1255+150*i,_birb[language]+string(money_conversion(ls_bird[ii].birb_per_sec*MULTI))+"/s",c_green,c_green,c_green,c_green,bird_ui_alpha);

		}
		else // if i havent have this bird
		{
			if ls_bird[ii].hatching == false // if dont have the egg
			{
				if level < ls_bird[ii].level_need // if not enough level
				{
					draw_roundrect_color(button_x-230/2,button_y-90/2,button_x+230/2,button_y+90/2,c_ltgray,c_ltgray,false);//draw gray button
					draw_set_valign(fa_middle);
					draw_set_halign(fa_center);
					draw_set_font(ft_info_num_small);
					var require = ["Require\nLevel","需要\n等级"];
					draw_text_color(920,1210+150*i,require[language]+string(ls_bird[ii].level_need),c_white,c_white,c_white,c_white,bird_ui_alpha); // upgrade text
				}
				else // if got enough level
				{
					if birb < ls_bird[ii].upgrade_need // if dont have enough money to hatch
					{
						draw_roundrect_color(button_x-button_w/2,button_y-button_h/2,button_x+button_w/2,button_y+button_h/2,c_ltgray,c_ltgray,false);//draw gray button
					
					}
					else // if have enough money to hatch
					{
						if click_button(800,1170+150*i,1030,1260+150*i) && open_bird_ui
						{	// ------------- egg hatching -------------------------
							alarm[0] = 10;
							button_w = 230*0.9;button_h=90*0.9;
							birb -= ls_bird[ii].upgrade_need; // minus the cost
							ls_bird[ii].hatching = true;
							
							var row = ii div 4; var col = ii mod 4; // create the egg
							with instance_create_layer(93.75+col*187.5,1476-300*row,"birds",obj_egg)
							{
								bird = other.ls_bird[ii].object;
								duration = other.ls_bird[ii].egg_time;
							}
							array_insert(ls_bird_possesed,array_length(ls_bird_possesed),ls_bird[ii])
							obj_camera.y_to = 1476-300*row-obj_camera.view_h/4; // set camera to the current bird
							clicked = i;
							
						}
						if clicked = i
							draw_roundrect_color(button_x-button_w/2,button_y-button_h/2,button_x+button_w/2,button_y+button_h/2,c_aqua,c_aqua,false);//draw upgrade button
						else
							draw_roundrect_color(button_x-230/2,button_y-90/2,button_x+230/2,button_y+90/2,c_blue,c_blue,false);//draw upgrade button
					}
					draw_set_valign(fa_middle);
					draw_set_halign(fa_center);
					draw_set_font(ft_info_num_small); // draw hatch text
					var _hatch = ["Hatch\n","孵化\n"];
					draw_text_color(920,1210+150*i,_hatch[language]+string(money_conversion(ls_bird[ii].upgrade_need)),c_white,c_white,c_white,c_white,bird_ui_alpha); // upgrade text
				}
			}
			else // if hatching the egg
			{
				draw_roundrect_color(button_x-230/2,button_y-90/2,button_x+230/2,button_y+90/2,c_lime,c_lime,false);//draw hatching button
				draw_set_valign(fa_middle);
				draw_set_halign(fa_center);
				draw_set_font(ft_info_num_small);
				var hatching = ["Hatching","孵化中"];
				draw_text_color(920,1210+150*i,hatching[language],c_white,c_white,c_white,c_white,bird_ui_alpha); // upgrade text
			}
		}
	}
	
	// forward and backward page
	var bird_ui_page_max = array_length(ls_bird) div 5;
	if keyboard_check_pressed(vk_numpad6) bird_ui_page = min(bird_ui_page + 1,bird_ui_page_max-1);
	if keyboard_check_pressed(vk_numpad4) bird_ui_page = max(bird_ui_page - 1,0);
	draw_sprite_ext(spr_change_page_icon,0,150,1980,4,4,180,c_white,bird_ui_alpha);
	draw_sprite_ext(spr_change_page_icon,0,950,1980,4,4,0,c_white,bird_ui_alpha);
	
	draw_set_alpha(1);
}