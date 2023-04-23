/// @description Insert description here
// You can write your code in this editor

// -------- info --------
scale_small = 0.2;
scale_big = 0.5;
border = 83;
spr_width = sprite_get_width(id.sprite_index);
spr_height = sprite_get_height(id.sprite_index);

// -------- init ---------------
mouse_buff_x = 0;
mouse_buff_y = 0;
image_xscale = scale_small;
image_yscale = image_xscale;
dragging = false;
click = false;