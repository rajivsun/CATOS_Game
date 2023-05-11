/// @description Insert description here
// You can write your code in this editor

spr_name = sprite_get_name(sprite_index);
spr_idle = sprite_index;
spr_walk = asset_get_index(spr_name + "_walk");
upixelH = shader_get_uniform(shader_outlineB,"pixelH");
upixelW = shader_get_uniform(shader_outlineB,"pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

//-------- initialization------------
count = 0;
state = "idle";