/// @description Insert description here
// You can write your code in this editor

accept_key = keyboard_check_pressed(vk_space);

//setup
if setup == false
{
	setup = true;
	draw_set_font(ft_chinese);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	page_number = array_length(txt);
	for (var p = 0; p < page_number; p++)
	{
		
		//find how many characte rs are on each page and store that number in the text length array
		text_length[p] = string_length(txt[p][0]);
		
		//get the x position for the textbox
		//no character
		//text_x_offset[p] = 44;
	}
}

// typing the text
if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char,0,text_length[page]);
}

//flip through pages
if accept_key and txt[page+1][0] != 0
{
	//if the typing is done
	if draw_char == text_length[page]
	{
		//next page
		if page < page_number -1
		{
			page ++;
			draw_char = 0;
		}
		else
		{
			//instance_destroy();
			destroying = true; // last page
		}
	}
	else // if not typing
	{
		draw_char = text_length[page]; // quickly show all the text
	}
}

//draw textbox
if destroying == false
{
	xscale = lerp(xscale,3,0.2);
	yscale = lerp(yscale,3,0.5);
}
else
{
	xscale = lerp(xscale,0,0.2);
	yscale = lerp(yscale,0,0.5);	
	if xscale <= 0.1 instance_destroy();
}
draw_sprite_ext(spr_box,0,textbox_x,textbox_y,xscale,yscale,0,c_white,1);

//draw the text
var _drawtext = string_copy(txt[page][0],1,draw_char);
if ! destroying
	draw_text_ext(text_x,text_y,_drawtext,line_sep,line_width);

//draw portrait
if ! destroying
draw_sprite_ext(spr_portrait,txt[page][1]-1,portrait_x,portrait_y,xscale*4,xscale*4,0,c_white,1);

//draw options
if txt[page+1][0] == 0 and draw_char == text_length[page]
{
	opbox_xscale = lerp(opbox_xscale,3,0.2);
	opbox_yscale = lerp(opbox_yscale,3,0.2);
	if (array_length(txt[page+1][1]) == 2)
	draw_sprite_ext(spr_optionbox,0,700,370,opbox_xscale,opbox_yscale,0,c_white,1);
	draw_sprite_ext(spr_optionbox,0,1200,370,opbox_xscale,opbox_yscale,0,c_white,1);
}



