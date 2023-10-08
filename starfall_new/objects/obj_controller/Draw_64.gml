/// @description Insert description here
// You can write your code in this editor



draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text(display_get_gui_width()-50,50,"start wave"+string(start_wave));

draw_sprite_ext(spr_coin,0,100,100,3,3,0,c_white,1);
draw_set_font(ft_UI);
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text_transformed(150,100,string(gold),2,2,0);

if instance_exists(obj_player)
{
	draw_text(150,1000,"HP: "+string(obj_player.hp))
}