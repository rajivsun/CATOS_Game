/// @description Insert description here
// You can write your code in this editor

// draw the fond
draw_set_alpha(0.8);
draw_rectangle_color(0,0,1280,640,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//draw item
//shader_set(Shader_gray);
if obj_main.language == "chinese"
	draw_sprite_ext(spr_tutorial,tutorial,640,320,size,size,0,c_white,1);
else if obj_main.language == "english"
	draw_sprite_ext(spr_tutorialEN,tutorial,640,320,size,size,0,c_white,1);
draw_sprite_ext(spr_exit,0,1100,50,2,2,0,c_white,1);

