/// @description Insert description here
// You can write your code in this editor

// -------- info --------
border = obj_controller.border;
bordery = obj_controller.bordery;
bordery2 = obj_controller.bordery2;
spr_width = sprite_get_width(id.sprite_index);
spr_height = sprite_get_height(id.sprite_index);
image_xscale = 6;
image_yscale = 6;

// -------- init ---------------
mouse_buff_x = 0;
mouse_buff_y = 0;
dragging = false;
mouse_xprev = mouse_x;
mouse_yprev = mouse_y;
click = false;
