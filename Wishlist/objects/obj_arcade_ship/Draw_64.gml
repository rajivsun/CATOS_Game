/// @description Insert description here
// You can write your code in this editor

hp = min(hp,hp_max);

draw_sprite_ext(spr_healthbar_border,0,50,50,10,10,0,c_white,1);
draw_sprite_stretched(spr_actionbar,0,50,50,380*hp/hp_max,80);



//draw_healthbar(50,50,400,100,hp/hp_max*100,false,c_red,c_green,0,true,true);


