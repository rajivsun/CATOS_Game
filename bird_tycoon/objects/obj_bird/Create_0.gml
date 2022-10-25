/// @description Insert description here
// You can write your code in this editor


alarm[0] = 60;
level = 0;
dir = 0;
trust_score = 0;
image_yscale = abs(image_xscale);
y_original = y;
state = "idle";
idle_count = 0;
switch_count = 0;

spr_small = asset_get_index(sprite_get_name(spr_grand)+"_small");
spr_middle = asset_get_index(sprite_get_name(spr_grand)+"_middle");
spr_wing = asset_get_index(sprite_get_name(spr_grand)+"_wing");