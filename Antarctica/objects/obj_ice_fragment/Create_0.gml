/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_ice_fragment;
image_index = irandom_range(0,image_number);

image_xscale = choose(-1,1)*0.3;
image_yscale = abs(image_xscale);

speed = 1.2+(y-280)*0.04;
direction = 180;

