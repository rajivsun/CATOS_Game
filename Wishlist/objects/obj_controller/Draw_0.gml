/// @description Insert description here
// You can write your code in this editor

y_buffer += sign_speed;
if y_buffer >= 2.5
{
	sign_speed = -sign_speed;
}
if y_buffer <= -2.5
{
	sign_speed = -sign_speed;
}


//if room == mission[current_mission][3]
//{
//	draw_sprite_ext(spr_mission_sign,0,mission[current_mission][1],mission[current_mission][2]+y_buffer,0.5,0.5,0,c_white,1);
//	draw_sprite_ext(spr_mission_sign,0,mission[current_mission][1],mission[current_mission][2]-y_buffer,0.5,0.5,0,c_white,1);
//}
