/// @description footprint generator
// You can write your code in this editor

with instance_create_layer(x,y+11,"ground",obj_footprint){	
	image_angle = other.input_direction;
	image_index = 0.5 +  0.5*other.coef_footprint;
}
walking = false;
coef_footprint *= -1;
