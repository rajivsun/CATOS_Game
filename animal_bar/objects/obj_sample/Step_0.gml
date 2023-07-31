/// @description Insert description here
// You can write your code in this editor


switch state
{
	case "idle":
		x = mouse_x;
		y = mouse_y;
		if place_meeting(x,y,obj_shaker_table)
		{
			if mouse_check_button_pressed(mb_left)
			{
				with obj_shaker_table
				{
					y_offset_2 = 10;
					var ps = part_system_create();
					part_system_draw_order( ps, true);

					var ptype1 = part_type_create();
					part_type_shape( ptype1, pt_shape_pixel);
					part_type_size( ptype1, 2, 2, 0, 0 );
					part_type_scale( ptype1, 1, 1);
					part_type_speed( ptype1, 5, 7, 0, 0);
					part_type_direction( ptype1, 70, 110, 0, 0);
					part_type_gravity( ptype1, 0.3, 270);
					part_type_orientation( ptype1, 0, 0, 0, 0, false);
					part_type_colour3( ptype1, $FFFF00, $FFFFFF, $FFFFFF );
					part_type_alpha3( ptype1, 1, 0.5, 0);
					part_type_blend( ptype1, false);
					part_type_life( ptype1, 60, 60);

					var pemit1 = part_emitter_create( ps );
					part_emitter_region( ps, pemit1, -4.200775, 4.200775, -3.9305115, 3.9305115, ps_shape_rectangle, ps_distr_linear );
					part_emitter_burst(ps, pemit1, ptype1, 17);

					part_system_position(ps, x,y);
				}
				array_push(obj_shaker_table.ls_drinks,material);
				instance_destroy();
			}
		}
		break;
	
	case "pouring":
		
		
		break;
}
