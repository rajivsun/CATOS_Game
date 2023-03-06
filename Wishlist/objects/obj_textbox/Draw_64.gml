/// @description Insert description here
// You can write your code in this editor

accept_key = keyboard_check_pressed(vk_space);

//setup
if setup == false
{
	setup = true;
	draw_set_font(ft_chinese);	
	//loop through the pages
	page_number = array_length(txt[current_node]);
	for (var p = 0; p < page_number; p++)
	{		
		//find how many characte rs are on each page and store that number in the text length array
		text_length[p] = string_length(txt[current_node][p][0]);
	}
}

// typing the text
if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char,0,text_length[page]);
}

// flip through pages
if accept_key and txt[current_node][page+1][0] != 0
{
	//if the typing is done
	if draw_char == text_length[page]
	{
		//next page ( if next page is not end, is not action )
		if page < page_number -1 and txt[current_node][page+1][0] != 1 and txt[current_node][page+1][0] != 2
		{
			page ++;
			draw_char = 0;
		}
		else if txt[current_node][page+1][0] == 1 // if next page is the end
		{
			instance_destroy();
			destroying = true; // last page
		}
		else if txt[current_node][page+1][0] == 2 // if next page is action 
		{
			destroying = true;
			take_action(txt[current_node][page+1][1]);
			instance_destroy();
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
var _drawtext = string_copy(txt[current_node][page][0],1,draw_char);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if ! destroying
{
	draw_text_ext(text_x,text_y-45,ls_portrait_name[| txt[current_node][page][1]]+":",line_sep,line_width);
	draw_text_ext(text_x,text_y,_drawtext,line_sep,line_width);
}
//draw portrait
if ! destroying
{
	// draw call interface
	if call == true
	{
		draw_sprite_ext(spr_call_portrait,0,portrait_x,portrait_y,5,5,0,c_white,1);
	}
	draw_sprite_ext(spr_portrait,txt[current_node][page][1]-1,portrait_x,portrait_y,xscale*3,xscale*3,0,c_white,1);
}
//draw options
if txt[current_node][page+1][0] == 0 and draw_char == text_length[page]
{
	if keyboard_check_pressed(vk_numpad1) option = 1;
	if keyboard_check_pressed(vk_numpad2) option = 2;
	opbox_xscale = lerp(opbox_xscale,3,0.2);
	opbox_yscale = lerp(opbox_yscale,3,0.2);
	if (array_length(txt[current_node][page+1][1]) == 2) // if there are two options
	{
		draw_sprite_ext(spr_optionbox,0,800,370,opbox_xscale,opbox_yscale,0,c_white,1);
		draw_sprite_ext(spr_optionbox,0,1300,370,opbox_xscale,opbox_yscale,0,c_white,1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(800,370,txt[current_node][page+1][1][0][0]);
		draw_text(1300,370,txt[current_node][page+1][1][1][0]);
		
		if option != 0 // if player choose an option
		{
			instance_destroy(); // create new textbox with new node
			create_textbox(txt,txt[current_node][page+1][1][option-1][1]); 
		}
	}
}


//draw_text(100,100,page);
//virtual_key_show(key_1);
//virtual_key_show(key_2);
//draw_text(50,50,"here");


