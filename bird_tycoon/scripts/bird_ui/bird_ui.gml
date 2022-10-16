// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bird_ui(){
	draw_set_alpha(0.8); // draw fond
	draw_roundrect_color_ext(20,1000,980,1830,20,20,c_white,c_white,false);
	draw_set_alpha(1); // draw darker icon
	draw_roundrect_color_ext(50,1870,200,1960,20,20,c_ltgray,c_ltgray,false);
	draw_roundrect_color_ext(50,1020,950,1100,20,20,c_white,c_white,false); // draw title
	draw_set_font(ft_info_num_big);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(150,1065,"Birds",c_black,c_black,c_black,c_black,1);
	
	for (var i=0;i<array_length(ls_bird);i++)
	{
		draw_roundrect_color_ext(50,1150+150*i,950,1280+150*i,20,20,c_white,c_white,false);
		draw_sprite_ext(ls_bird[i].sprite,0,140,1220+150*i,-2,2,0,c_white,1);
		draw_set_font(ft_info_num);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_text_color(250,1160+150*i,ls_bird[i]._name,c_black,c_black,c_black,c_black,1);
		//draw_text_color(250,1200+150*i,"Level: "+string(ls_bird[i].level),c_black,c_black,c_black,c_black,1);
		//draw_text_color(250,1240+150*i,"Level: "+string(ls_bird[i].birb_per_sec),c_black,c_black,c_black,c_black,1);
	}
}