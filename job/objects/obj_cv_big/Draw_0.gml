/// @description Insert description here
// You can write your code in this editor


// ----------- draw self with size changing-------

//draw_self();


var draw_x = spr_width/2 - (x - border)/image_xscale; 
// draw small part
if x - spr_width/2*image_xscale > border
	draw_sprite_part_ext(spr_paper,0,0,0,spr_width,spr_height,
		x-spr_width/2*image_xscale,
		y-spr_height/2*image_yscale,image_xscale,image_yscale,c_white,1);
else
	draw_sprite_part_ext(spr_paper,0,draw_x,0,spr_width-draw_x,spr_height,
		border,
		y-spr_height*image_yscale/2,image_xscale,image_yscale,c_white,1);	

