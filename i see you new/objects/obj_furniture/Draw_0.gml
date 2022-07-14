/// @description Insert description here
// You can write your code in this editor

//if obj_main.mode_bonus == "tour" or room == rm_museum	image_alpha = 1
//else	image_alpha = max(0,image_alpha - 1/60);

//if obj_main.mode_bonus == "tour" or room == rm_museum 
//or object_index == obj_baobaochair
//draw_self()

//else{
//	if !obj_controller.piano_scene
//		shader_set(Shader_gray);
//	draw_self();
//	shader_reset();

//}

//draw_text(x,y-50,action);

if obj_main.mode_bonus == "tour" or room == rm_museum
{
	draw_self();
	image_alpha = 1;
}
else
{
	if room == rm_homeF1
	{
		if !obj_controller.piano_scene and object_index!= obj_baobaochair
			shader_set(Shader_gray);
	}
	else
	{
		shader_set(Shader_gray);
	}
	image_alpha = max(0,image_alpha - 1/60);
	draw_self();
	shader_reset();
}

if acting
{
	shader_set(Shader_gray);
	draw_self();
	image_alpha = 1;
	shader_reset();
}
