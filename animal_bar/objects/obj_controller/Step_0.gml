/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(ord("T"))
{
	make_drinks = true;
}

if make_drinks == true
{
	blur_level = min(blur_level+0.5,10);

}
var _fx_blur = layer_get_fx("blur");
fx_set_parameter(_fx_blur,"g_Radius",blur_level);