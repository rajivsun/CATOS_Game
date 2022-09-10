/// @description Insert description here
// You can write your code in this editor


for (i=0;i<20;i++)
{
	if i % 2 == 1
		draw_sprite_ext(spr_dart_board_piece,0,960,540,2,2,0+18*i,c_white,1);
	else
		draw_sprite_ext(spr_dart_board_piece,1,960,540,2,2,0+18*i,c_white,1);
}
