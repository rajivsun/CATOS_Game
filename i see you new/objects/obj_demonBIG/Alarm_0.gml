/// @description footprint
// You can write your code in this editor

if invisible == false{
	with instance_create_layer(x,y+11,"ground",obj_footprintdemon){	
		image_angle = other.direction;
	}
}
walking = false;
