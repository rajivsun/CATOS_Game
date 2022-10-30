/// @description Insert description here
// You can write your code in this editor

if room == rm_home_pre or room == rm_museum exit;
var weapon_x = 30;var weapon_y = 60;

weapon = obj_inventory.ds_weapon_ready[# 0,obj_player.current_weapon];
var weapon_num = obj_inventory.ds_weapon_ready[# 1,obj_player.current_weapon];
//draw_text(50,500,object_get_name(weapon.object_index))

if weapon_num != 0{
	var _ammo = check_ressource(weapon.ammo_type);
	var wspr = object_get_sprite(obj_inventory.ds_weapon_ready[# 0,other.current_weapon]);
	var _scale = 1.5*64/sprite_get_height(wspr);
	
	//accessery
	var subimg = weapon.ac_total;
	if weapon.ac_total == 3 && ds_list_size(weapon.ac) < 2 subimg = 7
	draw_sprite_part_ext(wspr,subimg,0,0,sprite_get_width(wspr),sprite_get_height(wspr),weapon_x,weapon_y,
	_scale,_scale,c_white,1);
	
	draw_set_font(ft_numberSMALL);
	draw_set_valign(fa_middle);draw_set_halign(fa_left);
	if weapon.ammo == weapon.defaut_ammo draw_set_color(c_green);
	draw_text(weapon_x + 40+sprite_get_width(wspr), weapon_y + 50,string(weapon.ammo));
	draw_set_color(c_white);
	draw_set_font(ft_numberSSMALL);draw_text(weapon_x+63+sprite_get_width(wspr),weapon_y+53,"/"+string(_ammo));
	
	// reloading
	if !obj_joystick.ready && pause() == false && alarm[4] <= 0{
		if ((keyreload && weapon.ammo < weapon.defaut_ammo))
		&& _ammo > 0  && !reloading{
			reloading = true;
			audio_play_sound(sd_gun_reload,1,0);
			alarm[2] = 60*weapon.reload_time;
		}
	}
}

// hp bar
var hpbarx = 30,hpbary = 30,scale = 3
draw_sprite_ext(spr_hpbar_border,0,hpbarx,hpbary,scale,scale,0,c_white,1);
draw_sprite_stretched_ext(spr_hpbar,0,hpbarx,hpbary,scale*58*hp/hp_max,scale*10,c_white,1);

//draw_text(50,500,inst_9370057.pc_password)
//if pause(){ draw_text(50,500,"fuck")}

//var _list = ds_list_create();
//var _num = instance_place_list(x, y, obj_wallsmall, _list, false);
//if _num > 0
//    {
//    for (var i = 0; i < _num; ++i;)
//        {
//        show_debug_message(object_get_name(_list[| i].object_index));
//        }
//    }
//ds_list_destroy(_list);