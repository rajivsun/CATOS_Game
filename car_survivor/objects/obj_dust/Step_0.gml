/// @description Insert description here
// You can write your code in this editor


if image_xscale > 0 {
	image_xscale -= .05;
	image_yscale -= .05;
	y -= 1;
} else {
	instance_destroy();
}
