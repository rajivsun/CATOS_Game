/// @description Insert description here
// You can write your code in this editor

yy = max(1080,yy-10);
count += 0.1;
draw_sprite_ext(spr_cellphone_call,count,1200,yy,10,10,0,c_white,1);
draw_sprite_ext(spr_portrait,portrait_show-1,1380,yy-330,10,10,0,c_white,1);

draw_set_center();
draw_set_font(ft_chinese);
draw_text_transformed(1380,yy-200,obj_controller.ls_portrait_name[| portrait_show],2,2,0);