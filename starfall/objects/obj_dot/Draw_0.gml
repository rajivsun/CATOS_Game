/// @description Insert description here
// You can write your code in this editor


if collision_circle(x,y,30,obj_player,false,false)
{
	draw_sprite_ext(object_get_sprite(object_to_build),0,x,y,1,1,0,c_white,0.7);
	draw_text(x,y-50,"money need:" + string(money_need));
}
else
{
	draw_self();
}

