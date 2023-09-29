// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shoot_bullet(_x,_y,_spd,_dmg,_dir){
	with instance_create_layer(_x,_y,"player",obj_bullet)
	{
		speed = _spd;
		damage = _dmg;
		direction = _dir+random_range(-10,10);
		image_angle = direction;
		image_xscale = max(1,speed/sprite_width);
	}
	with instance_create_layer(_x,_y,"player",obj_gunfire)
	{
		image_angle = _dir;
	}
}