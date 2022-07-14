/// @description Insert description here
// You can write your code in this editor

draw_self();

if talk_sign_show == true
{	
	xscale = lerp(xscale,0.3,0.1);
	yscale = lerp(yscale,0.3,0.1);
	draw_sprite_ext(spr_talksign,0,x,y-sprite_height/2,xscale,yscale,0,c_white,1);
	//draw_set_font(ft_chinese);
	//draw_text(x,y-sprite_height/2,"小豆包的家在哪");
}
else
{
	xscale = lerp(xscale,0,0.1);
	yscale = lerp(yscale,0,0.1);
	draw_sprite_ext(spr_talksign,0,x,y-sprite_height/2,xscale,yscale,0,c_white,1);	
}