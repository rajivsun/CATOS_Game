/// @description Insert description here
// You can write your code in this editor


//_scale = _scale*0.999
//_y = _y *0.999
//var lay_id = layer_get_id("bg_bridge");
//var back_id = layer_background_get_id(lay_id);
//layer_background_xscale(back_id, _scale);
//layer_background_yscale(back_id, _scale);
//layer_y(lay_id,_y);


alpha_layer += 0.01;


var lay_id = layer_get_id("bg_far_citytop");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, alpha_layer);
var lay_id = layer_get_id("bg_bridge");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, alpha_layer);

image_alpha = min(1,image_alpha+0.01)

if instance_exists(obj_commentor)
{
	if obj_commentor.current >= 24 and ! create_train
	{
		create_train = true;
		instance_create_layer(-1000,209,"train",obj_train);
	}
}