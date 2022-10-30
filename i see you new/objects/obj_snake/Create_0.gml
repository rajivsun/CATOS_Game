/// @description Insert description here
// You can write your code in this editor

cell_size = 32;
length = 1;

dir = 1;
hit = -1;
update_speed = 15;
alarm[0] = update_speed;

x1 = 384;x2 = 1280-384;
y1 = 96;y2 = 640-96;


randomize()
block_xx = (random_range(x1+32,x2-32) div cell_size)*cell_size;
block_yy = (random_range(y1+32,y2-32) div cell_size)*cell_size;
xx[0] = ((x1+96) div cell_size)*cell_size;
yy[0] = ((y1+96) div cell_size)*cell_size;


if obj_main.debug score_needed = 2;else score_needed = 20;
sc = 0;
fail = false;
ending = false;

vk_x = 1100;vk_y = 350;
vk_d = virtual_key_add(vk_x-32*1.5,vk_y+32*1.5+100,64*1.5,64*1.5,vk_down);
vk_l = virtual_key_add(vk_x-32*1.5-100,vk_y+32*1.5,64*1.5,64*1.5,vk_left);
vk_r = virtual_key_add(vk_x-32*1.5+100,vk_y+32*1.5,64*1.5,64*1.5,vk_right);
vk_u = virtual_key_add(vk_x-32*1.5,vk_y+32*1.5-100,64*1.5,64*1.5,vk_up);
//virtual_key_show(vk_u)
//virtual_key_show(vk_r)
//virtual_key_show(vk_l)
//virtual_key_show(vk_d)