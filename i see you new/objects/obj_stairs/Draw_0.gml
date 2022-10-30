/// @description Insert description here
// You can write your code in this editor

if obj_main.mode_bonus == "tour" image_alpha = 1;
else image_alpha = max(0,image_alpha - 1/60);

if obj_main.mode_bonus == "tour" draw_self()
else{
	shader_set(Shader_gray);
	draw_self();
	shader_reset();
}
//draw_text(x,y,string(id)+string(locked))

if acting 
{
	image_alpha = 1;
	shader_set(Shader_gray);
	draw_self();
	shader_reset();
}
