/// @description Insert description here
// You can write your code in this editor


// drak room
if lighton == false
{
	draw_set_alpha(0.95);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}

// display players life film
if displayon == true
{
	draw_set_alpha(0.95);
	var c = c_white;
	draw_rectangle_color(89,60,322,130,c,c,c,c,false);
	draw_set_alpha(1);
	//draw_set_color(c_black);
	//draw_set_font(ft_chinese);
	//draw_set_valign(fa_middle);
	//draw_set_halign(fa_center);
	//draw_text(216,113,txt);
	//draw_set_color(c_white);
}

//txt="试验人员：让 /n年龄：38岁/n职业：清洁机器人操控员";
