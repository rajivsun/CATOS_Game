/// @description Insert description here
// You can write your code in this editor


//draw_sprite_ext(spr_doseur,0,x,y,0.7,0.7,0,c_white,1);

if object_get_parent(material) == obj_season
draw_sprite_ext(object_get_sprite(material),0,x,y,1,1,0,c_white,1);
else
draw_sprite_ext(object_get_sprite(material),0,x,y+30,1,1,0,c_white,1);
