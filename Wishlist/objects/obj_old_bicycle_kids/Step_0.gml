/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_commentor)
{
	if obj_commentor.current >= 3
	{
		layer_spd = max(layer_spd-0.01,-10);
		image_speed = 1;
		layer_hspeed("bg_near",layer_spd);
		layer_hspeed("bg_middle",layer_spd);
		layer_hspeed("bg_reflex",layer_spd);
		layer_hspeed("bg_far",layer_spd/5);
	}
	
	if obj_commentor.current >= 6
	{
		fx_blur_thres = min(100,fx_blur_thres + 0.1);
		var _fx = layer_get_fx("blur");
		fx_set_parameter(_fx,"g_LinearBlurVector",[fx_blur_thres,0]);
	}
	
	if obj_commentor.current >= 0
	{
		image_alpha -= 0.01;
		if image_alpha <= 0
		{
			instance_destroy();
			instance_create_layer(x,y,"system",obj_old_bicycle_adults);
		}
	}
}

