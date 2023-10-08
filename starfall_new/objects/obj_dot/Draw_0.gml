/// @description Insert description here
// You can write your code in this editor


if collision_circle(x,y,collision_range,obj_player,false,false)
{
	draw_sprite_ext(object_get_sprite(object_to_build),0,x,y,1,1,0,c_white,0.7);
	draw_text_transformed(x,y-10,"Need:" + string(money_need),0.2,0.2,0);
}
else
{
	draw_self();
}

