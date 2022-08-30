/// @description Insert description here
// You can write your code in this editor



for(var i=0;i<5;i++)
{
	instance_create_layer(random_range(0,700),random_range(10,120),"ships",choose(obj_ship1,obj_ship2));
}

alarm[0] = 10;