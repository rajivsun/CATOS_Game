// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_money(num,idle){
	
	if idle	
	{
		with instance_create_layer(id.x,id.y,"text_money",obj_show_money)
		{
			money_num = num;
			instance_create_layer(id.x,id.y,"text_money",obj_circle);
		}
	}
	else
	{
		with instance_create_layer(mouse_x,mouse_y-80,"text_money",obj_show_money)
		{
			money_num = num;
			instance_create_layer(mouse_x,mouse_y,"text_money",obj_circle);
		}		
	}
	obj_controller.birb += num;
	
}