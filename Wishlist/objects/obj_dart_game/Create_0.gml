/// @description Insert description here
// You can write your code in this editor


for (var i=0;i<20;i++)
{
	if i % 2 == 1
		with instance_create_layer(160,90,"board",obj_dart_board_piece)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 0;
		}
	else
		with instance_create_layer(160,90,"board",obj_dart_board_piece)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 1;
		}
		
}
