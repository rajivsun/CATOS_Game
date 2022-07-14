/// @description Insert description here
// You can write your code in this editor

//if global.debug exit;


if (surface_exists(lightning_surface) == false){
	lightning_surface = surface_create(room_width + 50,room_height + 50);
}

surface_set_target(lightning_surface);

draw_clear_alpha(c_black,1);

with(obj_lightning_cutout){
	
	var wobble= 0;
	
	var wobble_amount_x = image_xscale + random_range(-wobble,wobble);
	var wobble_amount_y = image_yscale + random_range(-wobble,wobble);
	
	gpu_set_blendmode(bm_subtract);
	if instance_exists(obj_player)
		draw_sprite_ext(spr_lightning,image_index,x,y,
					wobble_amount_x*obj_player.detection_range*0.01,wobble_amount_y*obj_player.detection_range*0.01,
					0,color,1);
	else
		draw_sprite_ext(spr_lightning,image_index,x,y,
					wobble_amount_x*20*0.01,wobble_amount_y*20*0.01,
					0,color,1);
	gpu_set_blendmode(bm_normal);
	
	
}

surface_reset_target();

draw_surface(lightning_surface,0,0)