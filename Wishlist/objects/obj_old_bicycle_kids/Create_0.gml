/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

layer_spd = 0;
fx_blur_thres = 0;

var lay_id = layer_get_id("bg_far_citytop");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,0);

var lay_id = layer_get_id("bg_bridge");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id,0);

audio_play_sound(mc_sixteen,99,false);