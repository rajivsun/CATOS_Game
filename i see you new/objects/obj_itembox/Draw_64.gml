/// @description Insert description here
// You can write your code in this editor

//alpha -= 0.2/60;

// draw the fond
draw_set_alpha(0.8);
draw_rectangle_color(0,0,1300,700,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//draw item
//shader_set(Shader_gray);
var _spr = object_get_sprite(show_item.object_index);

var w = sprite_get_width(_spr); var h = sprite_get_height(_spr);
draw_sprite_part_ext(_spr,show_item.image_index,0,0,w,h,640-w*xscale/2,300-h*yscale/2,xscale,yscale,c_white,alpha);
shader_reset();

//draw description
var _desc = show_item.name;
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_text(640,500,_desc);

//draw close sign
draw_sprite_ext(spr_exit,0,1100,50,2,2,0,c_white,1);

//draw examsign
if show_item.exam == true
draw_sprite_ext(spr_examsign,0,1000,300,1.5,1.5,0,c_white,1);

//pickup sign
if show_item.pickable == true
draw_sprite_ext(spr_picksign,0,900,450,1.5,1.5,0,c_white,1);

//video warning
if show_item.object_index == obj_typewritter
{
	if obj_main.language == "chinese"
	{
		var _warn = "保存时候会看一小段广告哦，\n就当给作者支持啦，爱你们哦。"
	}
	else if obj_main.language == "english"
	{
		var _warn = "(Little ads don't hurt nobody.)"
	}
	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	if obj_main.platform == "mobile"
		draw_text(1050,200,_warn);
}

//show_debug_message(obj_ammo_9mm.pickable)
