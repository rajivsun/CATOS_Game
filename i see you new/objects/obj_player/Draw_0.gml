/// @description Insert description here
// You can write your code in this editor
draw_self();

if pause() exit;

// show interact sign
if interactsign {	
	y_buff += sgn * 0.2;
	if y_buff >= 7{
		sgn = -1;
	}
	if y_buff <= 0{
		sgn = 1;
	}
	draw_sprite_ext(spr_Esign,0,x,y-55+y_buff,0.5,0.5,0,c_white,1);
}

// shoot indicate
if obj_main.platform == "PC"
{

}
else
{
	if obj_joystick.r = 300 &&  weapon != 0
	draw_sprite_ext(spr_shootsign,0,x,y-17,0.5,0.5,obj_joystick.dirtofinger2,c_white,1);
}

// reload hpbar
if alarm[2] > 0
draw_healthbar(x-20,y-50,x+20,y-48,alarm[2]/120*100,c_black,c_green,c_green,0,false,false);
