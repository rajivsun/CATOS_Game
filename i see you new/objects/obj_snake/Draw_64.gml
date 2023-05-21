/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_arrow,0,vk_x,vk_y+100+64*1.5,1.5,1.5,270,c_white,1);
draw_sprite_ext(spr_arrow,0,vk_x-100,vk_y+64*1.5,1.5,1.5,180,c_white,1);
draw_sprite_ext(spr_arrow,0,vk_x+100,vk_y+64*1.5,1.5,1.5,0,c_white,1);
draw_sprite_ext(spr_arrow,0,vk_x,vk_y-100+64*1.5,1.5,1.5,90,c_white,1);



for (var i = 0; i < length; i++){
	if hit = i draw_rectangle_color(xx[i],yy[i],xx[i]+cell_size,yy[i]+cell_size,c_red,c_red,c_red,c_red,true);
	draw_rectangle(xx[i],yy[i],xx[i]+cell_size,yy[i]+cell_size,true);
}

draw_rectangle_color(block_xx,block_yy,block_xx+cell_size,block_yy+cell_size,
c_red,c_red,c_red,c_red,false)

//draw_text(50,50,xx[0])
draw_rectangle_color(x1+32,y1+32,x2,y2,c_white,c_white,c_white,c_white,true);

draw_set_font(ft_chinese);
draw_set_valign(fa_top);draw_set_halign(fa_left)

if obj_main.language == "chinese"
{
	draw_text(200,200,"当前得分:"+ string(sc));
	draw_text(200,250,"需要分数" + string(score_needed));

}
else if obj_main.language == "english"
{
	draw_text(200,200,"Current Score:"+ string(sc));
	draw_text(200,250,"Score Needed:" + string(score_needed));
}


if alarm[1] > 0{
	
	draw_set_color(c_black); draw_set_alpha(0.9)
	draw_rectangle(0,0,1280,640,false);
	draw_set_color(c_white); draw_set_alpha(1)
	
	if sc >= score_needed
	draw_sprite_ext(spr_gameboy_win,0,640,320,5,5,0,c_white,1);
	else 
	draw_sprite_ext(spr_gameboy_lose,0,640,320,5,5,0,c_white,1);
}