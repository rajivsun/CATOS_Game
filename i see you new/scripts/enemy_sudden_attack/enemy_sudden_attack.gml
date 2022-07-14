// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_sudden_attack(){
	if collision_circle(x,y,60*scale/1.5,follow,0,0) && state != "cd" && alarm[5] <= 0
	&& !collision_line(follow.x,follow.y,x,y,obj_wallsmall,0,0)
	&& !collision_line(follow.x,follow.y,x,y,obj_door,0,0)
	{
		state = "attack";
		path_end();
	}

}