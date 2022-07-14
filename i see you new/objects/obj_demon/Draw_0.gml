/// @description Insert description here
// You can write your code in this editor

//draw_healthbar(x-50,y-50,x+50,y-40,hp/hp_max*100,c_black,c_red,c_red,0,0,1);

//draw_self()
//var alpha = -1/200 * distance_to_object(obj_player) + 1;
//if(see_player){
//	alpha = 1;
//}
//image_alpha = alpha + random_range(-0.2,0.2);

//image_alpha = 1;
if !instance_exists(obj_player) exit;

if state == "attack" or state == "cd"{
	if random(10) < 3
	draw_self()	
}

if hit == true{
	
	sprite_index = spr_demonhit;
	if image_index >= image_number -1{
		image_index = image_number -1;
	}
	if random(10) < 3
	draw_self();	
}

if attack_sign == true{
	draw_sprite_ext(spr_demonattacksign,0,attack_sign_x,attack_sign_y,
	attack_sign_xscale,1,0,c_white,(80-cd_timer)/80); 	
}

// visualisation
exit;
var add_angle = 10;
var angle_dir = 1;
var dir = direction;
for (var rays = 0;rays <= ray_count; rays ++){
	for(var line_length = 0; line_length < ray_length;line_length++){
		var xx = x + lengthdir_x(line_length,dir);
		var yy = y + lengthdir_y(line_length,dir);		

		if position_meeting(xx,yy,obj_wallsmall) == true {
			draw_set_color(c_yellow);
			draw_circle(xx,yy,5,false);
			break;
		}
		
		if position_meeting(xx,yy,obj_player) == true {
			draw_set_color(c_red);
			draw_circle(xx,yy,5,false);
			break;
		}
		
		draw_set_color(c_lime);
		draw_point(xx,yy);
	}
	
	dir += (add_angle * rays) * angle_dir;
	angle_dir *= -1;
}

if acting == true draw_self();
