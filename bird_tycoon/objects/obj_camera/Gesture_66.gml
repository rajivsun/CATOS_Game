/// @description Insert description here
// You can write your code in this editor

if obj_controller.open_bird_ui == -1
{
	drag_room_x = mouse_x;
	drag_room_y = mouse_y;

	//set the dragging sensitivity
	if gesture_get_drag_distance() != 0.001
	{
	    gesture_drag_distance(0.001);
	}
}