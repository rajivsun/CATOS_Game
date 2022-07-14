/// @description Insert description here
// You can write your code in this editor

// draw cutscene text
draw_set_font(ft_chineseULTRA);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_text(640,200,msg);
draw_set_alpha(1);

if obj_main.language == "chinese"
	_skip = "跳过";
else if obj_main.language == "english"
	_skip = "Skip";

// pass sign
if pass = false{
	draw_text(1100,50,_skip);
	draw_sprite_ext(spr_next,0,1200,50,2,2,0,c_white,1);
}

_count += 4/60;
	
if obj_main.current_end == -1
{
	if current == 11
		alpha_train -= 0.5/60;
	draw_sprite_ext(spr_cutscene_train,_count,0,0,4,3.2,0,c_white,alpha_train);
}

else if obj_main.current_end = 0
{
	if current == 6
		alpha_train -= 0.5/60;
	draw_sprite_ext(spr_playerRL,_count,640,500,4,4,0,c_white,alpha_train);
}