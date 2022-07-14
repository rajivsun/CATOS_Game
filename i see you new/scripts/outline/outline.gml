// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function outline_create(_shader){
	#region outline
	//adding outline shader
	upixelH = shader_get_uniform(_shader,"pixelH");
	upixelW = shader_get_uniform(_shader,"pixelW");
	texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
	texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));
	#endregion
}

function outline_draw(_shader){
	shader_set(_shader);
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	draw_self();
	shader_reset();	
}