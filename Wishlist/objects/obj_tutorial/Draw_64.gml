/// @description Insert description here
// You can write your code in this editor

if destroy  alpha -= 0.01;
draw_sprite_ext(spr_tutorial,obj_controller.tutorial,2160/2,1080/2,1.5,1.5,0,c_white,alpha);

if alpha <= 0 instance_destroy();