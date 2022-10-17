// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bird_ui(){
	draw_set_alpha(0.8); // draw fond
	draw_roundrect_color_ext(20,1000,1080,2080,20,20,c_white,c_white,false);
	draw_set_alpha(1); // draw darker icon
	draw_roundrect_color_ext(50,2120,200,2260,20,20,c_ltgray,c_ltgray,false);
	draw_roundrect_color_ext(50,1020,1050,1100,20,20,c_white,c_white,false); // draw title
	draw_set_font(ft_info_num_big);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(150,1065,"Birds",c_black,c_black,c_black,c_black,1);
	
	for (var i=0;i<array_length(ls_bird);i++)
	{
		draw_roundrect_color_ext(50,1150+150*i,1050,1280+150*i,20,20,c_white,c_white,false);
		draw_sprite_ext(ls_bird[i].sprite,0,140,1220+150*i,-2,2,0,c_white,1);
		draw_set_font(ft_info_num);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_text_color(250,1160+150*i,ls_bird[i]._name,c_black,c_black,c_black,c_black,1);
		
		 // if already have this bird
		if instance_exists(ls_bird[i].object)
		{
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			// if got enough money to upgrade 
			if birb >= ls_bird[i].upgrade_need
			{
				draw_roundrect_color(800,1170+150*i,1030,1260+150*i,#007A3B,#007A3B,false);//draw upgrade button
				draw_roundrect_color(800,1170+150*i,1030,1250+150*i,#00A651,#00A651,false);
				if click_button(800,1170+150*i,1030,1260+150*i)
				{
					birb -= ls_bird[i].upgrade_need;
					ls_bird[i].level += 1;
					ls_bird[i].upgrade_need *= 2;
					ls_bird[i].birb_per_sec += 1;	
				}
			}
			else
			{
				draw_roundrect_color(800,1170+150*i,1030,1260+150*i,c_gray,c_gray,false);//draw gray button
				draw_roundrect_color(800,1170+150*i,1030,1250+150*i,c_ltgray,c_ltgray,false);
			}
	
			draw_set_font(ft_info_num_small);
			draw_text_color(920,1190+150*i,"Upgrade",c_white,c_white,c_white,c_white,1); // upgrade text
			draw_text_color(920,1225+150*i,ls_bird[i].upgrade_need,c_white,c_white,c_white,c_white,1); // upgrade need money
			draw_set_halign(fa_left);
			draw_text_color(250,1220+150*i,"Level "+string(ls_bird[i].level),c_black,c_black,c_black,c_black,1);
			draw_text_color(250,1250+150*i,"Birb : "+string(ls_bird[i].birb_per_sec)+"/s",c_green,c_green,c_green,c_green,1);

		}
		else
		{
			draw_roundrect_color(800,1170+150*i,1030,1260+150*i,c_gray,c_gray,false);//draw gray button
			draw_roundrect_color(800,1170+150*i,1030,1250+150*i,c_ltgray,c_ltgray,false);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_set_font(ft_info_num_small);
			draw_text_color(920,1210+150*i,"Require\n"+"Level "+string(ls_bird[i].level_need),c_white,c_white,c_white,c_white,1); // upgrade text
		}
		//draw_text_color(250,1200+150*i,"Level: "+string(ls_bird[i].level),c_black,c_black,c_black,c_black,1);
		//draw_text_color(250,1240+150*i,"Level: "+string(ls_bird[i].birb_per_sec),c_black,c_black,c_black,c_black,1);
	}
}