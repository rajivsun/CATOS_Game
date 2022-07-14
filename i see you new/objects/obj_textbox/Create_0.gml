/// @description Insert description here
// You can write your code in this editor
spr_box = spr_textbox;
alarm[0] = 5;
//frame = spr_portrait_frame;
//spr_portrait = spr_portraits;
text_maxwidth = 500*2;
counter = 0;
//portrait_index = 0;
text = ["i am blind i am blind i am blind i am blind i am blind i am blind i am blind",
		"i love you i love you i love you i love you i love you i love you i love you "
		];
//portraits = [0,0];
speakers = [obj_player,obj_player];
draw_set_font(ft_chinese)
text_height = string_height("M");
text_height = 50;
page = 0;


//playerstate = obj_player.state;

sp = virtual_key_add(50,410,1200,200,vk_space);

y_buff = 0;
sgn = 1;

//with obj_player{
//	image_speed = 0;
//	sprite_index = spr_idle;
//	image_index = face;
//	state = "cutscene";
//}