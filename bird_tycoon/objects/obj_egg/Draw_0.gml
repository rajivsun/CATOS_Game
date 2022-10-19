/// @description Insert description here
// You can write your code in this editor

draw_self();

count ++;
draw_healthbar(x-100,y-120,x+100,y-100,count/duration*100,c_black,c_orange,c_orange,-1,true,true);

if count >= duration
{
	instance_destroy();
	with instance_create_layer(born_x,born_y,"birds",bird){
		image_xscale = choose(-4,4);;
	}
	
}




