/// @description Insert description here
// You can write your code in this editor

// draw UI
draw_set_alpha(0.5);
draw_rectangle_color(0,0,1920,1080,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_sprite_ext(spr_terminal_metro_door,0,1920/2,1080/2,4,4,0,c_white,1);

// draw escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
} 

// draw code options
for (var i=0;i<array_length(options);i++)
{
	
	//button_show(1454,315+120*i,0.2,c_black,400,100);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_text_ultra);
	var _color = options[i][1];
	draw_text_color(1454,315+i*120,options[i][0],_color,_color,_color,_color,1);
}

// draw the run time
draw_healthbar(250,870,1130,950,100*(-alarm[0]/60+1),c_black,#4C7F58,#4C7F58,-1,1,1);

// draw working code button
button_show(pos1_x,pos1_y,0.3);
button_show(pos2_x,pos2_y,0.3);

// draw working code
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_text_big);
draw_text_color(pos1_x,pos1_y,pos1_txt[0],pos1_txt[1],pos1_txt[1],pos1_txt[1],pos1_txt[1],1);
draw_text_color(pos2_x,pos2_y,pos2_txt[0],pos2_txt[1],pos2_txt[1],pos2_txt[1],pos2_txt[1],1);

