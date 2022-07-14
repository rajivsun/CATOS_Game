/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player) exit;

if obj_main.mode_bonus == "tour" or obj_main.mode_bonus == "museum"	
draw_self()

else{
	if hold != noone{
		image_alpha = max(hold.image_alpha*2,image_alpha);
	}

	else{
		image_alpha = max(0,image_alpha - 1/60);
	}

	if collision_circle(x,y,100,obj_player,0,0) && image_alpha > 0.5 && id == obj_player.near_item{
		outline_draw(shader_outlineW);
	}
	else draw_self();
}




//draw_text(x,y,id);