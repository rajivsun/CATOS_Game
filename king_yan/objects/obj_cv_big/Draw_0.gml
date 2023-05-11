/// @description Insert description here
// You can write your code in this editor


// ----------- draw self with size changing-------
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


// ----------------------- text -----------------------

//var start_x = x - spr_width/2*image_xscale;
//var start_y = y - spr_height/2*image_yscale

//draw_text_transformed(start_x+20*image_xscale,start_y+20*image_xscale,"Levi",image_xscale,image_xscale,1);
////draw_text_transformed(x+20,y+200,"美洲豹",0.5*image_xscale,0.5*image_xscale,1);
////draw_text_transformed(x+20,y+220,"年龄：32岁",0.5*image_xscale,0.5*image_xscale,1);
