/// @description Insert description here
// You can write your code in this editor



// display the players life film
if displayon == true
{
	draw_set_color(c_black);
	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_text(960,400,txt[current_page]);
	draw_set_color(c_white);
	count ++;
	
	if count >= 60
	{
		count = 0;
		current_page ++;
		if current_page >= array_length(txt)
		{
			displayon = false;
			lighton = true;
			current_page = 0;
			with instance_create_layer(300,147,"NPC",obj_robot_hunter)
			
			
			{
				image_xscale = -1;
			}
		}
	}
}



