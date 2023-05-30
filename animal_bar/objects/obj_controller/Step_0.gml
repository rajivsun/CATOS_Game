/// @description Insert description here
// You can write your code in this editor

// ----------- making drinks ----------------------
if keyboard_check_pressed(ord("T"))
{
	make_drinks = true;
}

if make_drinks == true
{
	blur_level = min(blur_level+0.5,15);
}
var _fx_blur = layer_get_fx("blur");
fx_set_parameter(_fx_blur,"g_Radius",blur_level);



switch scene
{
	case 0:
		count++;
		if count >= room_speed * 2
		{
			obj_door.open_door = true;
			scene = 1;
			count = 0;	
		}
		break;
		
	case 1:
		//var pos = dialogue[current_dialogue].position;
		//for (var i=0;i<array_length(pos);i++)
		//{
		//	var obj = pos[i][0];
		//	obj.xTo = pos[i][1];
			
		//}
		break;
}

