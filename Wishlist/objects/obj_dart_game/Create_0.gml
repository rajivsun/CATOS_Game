/// @description Insert description here
// You can write your code in this editor

dart_number = [6,13,4,18,1,20,5,12,9,14,11,8,16,7,19,3,17,2,15,10];
total_score = 0;

for (var i=0;i<20;i++)
{
	if i % 2 == 1
	{
		with instance_create_layer(160,90,"board",obj_dart_board_piece)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 0;
			number = other.dart_number[i];
		}
		with instance_create_layer(160,90,"board",obj_dart_board_piece_2)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 0;
			number = other.dart_number[i];
		}
		with instance_create_layer(160,90,"board",obj_dart_board_piece_3)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 0;
			number = other.dart_number[i];
		}
	}
	else
	{
		with instance_create_layer(160,90,"board",obj_dart_board_piece)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 1;
			number = other.dart_number[i];
		}
		with instance_create_layer(160,90,"board",obj_dart_board_piece_2)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 1;
			number = other.dart_number[i];
		}
		with instance_create_layer(160,90,"board",obj_dart_board_piece_3)
		{
			image_xscale = 0.3;
			image_yscale = 0.3;
			image_angle = 18*i;
			image_index = 1;
			number = other.dart_number[i];
		}
	}	
}
