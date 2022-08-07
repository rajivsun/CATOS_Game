/// @description Insert description here
// You can write your code in this editor


if blackout 
{
	draw_set_alpha(0.8);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	layer_clear_fx("ss");
	layer_speed = min(0,layer_speed + 0.1);	
	var layer_id = layer_get_id("bg_fond");
	layer_hspeed(layer_id,layer_speed);
}

