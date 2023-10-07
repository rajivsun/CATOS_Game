/// @description Insert description here
// You can write your code in this editor


// shooting 
shoot_cd ++;
if collision_circle(x,y,shoot_range,obj_enemy,false,false)
{
	var _nearest_enemy = instance_nearest(x,y,obj_enemy)
	image_angle = point_direction(x,y,_nearest_enemy.x,_nearest_enemy.y)-180;
	if shoot_cd >= shoot_speed * room_speed
	{
		shoot_cd = 0;
		var _bx = x + lengthdir_x(11.66,image_angle+180-image_yscale*9.46)
		var _by = y + lengthdir_y(11.66,image_angle+180-image_yscale*9.46)
		shoot_bullet(_bx,_by,speed_bullet,shoot_dmg,point_direction(x,y,_nearest_enemy.x,_nearest_enemy.y));
		recoilAmmount = 10
	}
}
else
{
	//image_angle = lerp(image_angle,0,0.1)
}
// recoil
recoilAmmount = lerp(recoilAmmount,0,0.3)
x = xstart - lengthdir_x(recoilAmmount,image_angle+180)
y = ystart - lengthdir_y(recoilAmmount,image_angle+180)

if image_angle >= -90 and image_angle <= 90 image_yscale = 1
else image_yscale = -1