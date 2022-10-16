// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_money(num){
	
	with instance_create_layer(mouse_x,mouse_y,"text_money",obj_show_money)
	{
		money_num = num;
	}
	obj_controller.birb += num;
}