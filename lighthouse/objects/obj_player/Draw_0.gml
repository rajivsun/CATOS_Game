/// @description Insert description here
// You can write your code in this editor

rot_arm = point_direction(x,y,mouse_x,mouse_y);
if rot_arm > 90 and rot_arm < 270
{
	rot_arm = rot_arm + 180
}
if recoil_angle > 0
{
	recoil_angle = max(0,recoil_angle-3);
}
else if recoil_angle < 0
{
	recoil_angle = min(0,recoil_angle+3);
}
rot_arm = rot_arm + recoil_angle;

if state == "shoot"
	draw_sprite_ext(spr_player_shoot_pistol_left_arm,0,x+image_xscale*2,y-14,image_xscale,image_yscale,rot_arm,c_white,1);

draw_self();

//if state == "shoot"
//{
//	draw_sprite_ext(spr_player_shoot_pistol_right_arm,0,x-image_xscale*7,y-2,image_xscale,image_yscale,rot_arm,c_white,1);
//}

//draw_text(x,y-50,recoil_angle);