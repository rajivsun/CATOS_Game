/// @description Insert description here
// You can write your code in this editor

// -------- textbox paramters -------------
call = false;
spr_box = spr_textbox;
textbox_x = display_get_gui_width()/2;
textbox_y = 200;
text_x = 700;
text_y = 170;
portrait_x = display_get_gui_width()/2160 * 550;
portrait_y = display_get_gui_height()/1080 * 150;
line_sep = 45;
line_width = 1300;
key_1 = virtual_key_add(576,310,920-476,425-310,vk_numpad1);
key_2 = virtual_key_add(1083,310,1432-983,425-310,vk_numpad2);

//------------- textbox initialization ---------------
option = 0;
destroying = false;
xscale = 0;
yscale = 0;
opbox_xscale = 0;
opbox_yscale = 0;
current_node = 0;

//the text
txt[0] = "这是一个很长的文字哦，这是一个很长的文字哦，\n这是一个很长的文字哦，这是一个很长的文字哦";
page = 0;
page_number = 0;
text_length[0] = string_length(txt[0]);
draw_char = 0;
text_spd = 0.5;
setup = false;

// ----------------- portrait enum -------------------
enum portrait
{
	none = 0,
	player = 1,
	robotU = 2,
	boss = 3,
	robot_hunter = 4,
	sign_board = 5,
	mo = 6,
	phone = 7,
	cat = 8,
	bartender = 9,
	old_farmer = 10,
	lili_little = 11,
	player_little = 12,
	shaoda_little = 13,
	dayu_little = 14,
	old_man = 15,
	policeman = 16,
	shaoda_big = 17,
	robot_rcp = 18,
	feibiaoge = 19,
	tudigong = 20,
}

name_list();
key_space = virtual_key_add(1937,537,2115-1937,700-537,vk_space);