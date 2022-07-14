/// @description Insert description here
// You can write your code in this editor
if !instance_exists(follow) exit;
x = follow.x;
y = follow.y;
image_xscale = follow.scale/1.5;
image_yscale = image_xscale;
image_index = irandom(7);
image_alpha = choose(0,1)*alpha;
alpha -= 0.005