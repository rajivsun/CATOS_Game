/// @description Insert description here
// You can write your code in this editor


image_alpha -= 0.001;

count ++
if count >= room_speed * 10
{
	if image_alpha <= 0 
	{
		instance_destroy()
	}
}