/// @description Insert description here
// You can write your code in this editor


// ----------- draw self with size changing-------

var draw_width = (border - x)/image_xscale;
// draw small part
draw_sprite_part_ext(spr_paper,0,0,0,draw_width,220,x,y,scale_small,scale_small,c_white,1);
if x <= border // draw big part (half)
draw_sprite_part_ext(spr_paper,0,draw_width,0,spr_width,220,border,y,scale_big,scale_big,c_white,1);
else // draw full big part
draw_sprite_part_ext(spr_paper,0,0,0,spr_width,220,
x - (mouse_buff_x * scale_big/scale_small + mouse_buff_x),
y - (mouse_buff_y * scale_big/scale_small + mouse_buff_y),
scale_big,scale_big,c_white,1);

// ------------ text ------------------
draw_set_font(ft_chinese);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
//draw_text_transformed(x+20*image_xscale,y+20*image_xscale,"Levi",0.5*image_xscale,0.5*image_xscale,1);
//draw_text_transformed(x+20,y+200,"美洲豹",0.5*image_xscale,0.5*image_xscale,1);
//draw_text_transformed(x+20,y+220,"年龄：32岁",0.5*image_xscale,0.5*image_xscale,1);



