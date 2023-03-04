/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_Hack_UI_pre,image_index,2160/2,1080/2,2,2,0,c_white,1);

if image_index >= image_number - 1
{
	instance_destroy();
	instance_create_layer(x,y,"system",obj_hack_UI_AC);
}