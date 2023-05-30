/// @description Insert description here
// You can write your code in this editor

//------ NPC position --------
var current_dialogue = obj_controller.position_dialogue[obj_controller.current_dialogue];
//show_debug_message(current_dialogue)
for (var i=0;i<array_length(current_dialogue);i++)
{
	if object_index == current_dialogue[i][0]
		xTo = current_dialogue[i][1];
}

x = lerp(x,xTo,0.05);

// ------- state -------
switch state
{
	case "reveal":
		if alpha >= 1
		{
			count ++; // npc talk delay after reveal
			if count >= room_speed * 1
			{
				count = 0;
				state = "talking ";
				with obj_controller
				{
					make_text(all_txt[current_txt]);
				}
			}
		}
		break;
		
	case "talking":
		break;
		
	case "drinking":
		
		with obj_controller
		{
			make_text(all_txt[current_txt]);
		}
		state = "talking";
		break;
}

