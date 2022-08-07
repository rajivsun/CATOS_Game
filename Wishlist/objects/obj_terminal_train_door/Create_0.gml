/// @description Insert description here
// You can write your code in this editor

key_esc = virtual_key_add(1615,90,100,100,vk_escape);
key_esc = virtual_key_add(1328,798,1615-1328,907-798,ord("O"));


//virtual_key_show(key_esc);
options = 
[
	["true",#995B5D],
	["false",#995B5D],
	["open",#4C7F58],
	["close",#4C7F58],

];

select = 0;

pos1_txt = ["false",#995B5D];
pos2_txt = ["close",#4C7F58];
pos_txt = [pos1_txt,pos2_txt];
pos1 = false;
pos2 = "close";
pos1_x = 670; 
pos1_y = 194;
pos2_x = 554;
pos2_y = 339;
pos_x = [pos1_x,pos2_x];
pos_y = [pos1_y,pos2_y];

