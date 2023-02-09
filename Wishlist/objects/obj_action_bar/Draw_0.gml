/// @description Insert description here
// You can write your code in this editor

var _scale = 1;

draw_sprite_ext(spr_healthbar_border,0,x-15,y,_scale,_scale,0,c_white,1);
draw_sprite_stretched_ext(spr_actionbar,0,x-15,y,hp/hp_max*38*_scale,8*_scale,c_white,1);

count += 0.2;
draw_sprite_ext(spr_press_indicate,count,x+40,y+5,0.3,0.3,0,c_white,1);

draw_set_center();
draw_set_font(ft_chinese);
draw_set_alpha(0.7);
draw_rectangle_color(x-50,y-22,x+50,y-8,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1);
draw_text_ext_transformed(x,y-20,text,10,200,0.4,0.4,1);