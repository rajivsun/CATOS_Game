/// @description Insert description here
// You can write your code in this editor

//gesture_drag_time(0.1);

alarm[0] = 60;
level = 0;
dir = 0;
trust_score = 0;
image_yscale = abs(image_xscale);
y_original = y;
state = "idle";
idle_count = 0;
switch_count = 0;

spr_grand = sprite_index;
spr_small = asset_get_index(sprite_get_name(spr_grand)+"_small");
spr_middle = asset_get_index(sprite_get_name(spr_grand)+"_middle");
spr_wing = asset_get_index(sprite_get_name(spr_grand)+"_wing");
spr_speak = asset_get_index(sprite_get_name(spr_grand)+"_speak");

if object_index == obj_western_bluebird bird_id = obj_controller.wb;
if object_index == obj_northen_cardinal bird_id = obj_controller.nc;
if object_index == obj_cockatiel bird_id = obj_controller.ct;
if object_index == obj_budgerigar bird_id = obj_controller.br;
if object_index == obj_crow bird_id = obj_controller.cr;
if object_index == obj_american_robin bird_id = obj_controller.ar;
if object_index == obj_pigeon bird_id = obj_controller.pg;
if object_index == obj_downy_woodpecker bird_id = obj_controller.dw;
if object_index == obj_jay bird_id = obj_controller.ja;
if object_index == obj_goldfinch bird_id = obj_controller.gf;
if object_index == obj_king_fiser bird_id = obj_controller.kf;
if object_index == obj_toucan bird_id = obj_controller.tc;
if object_index == obj_hummingbird bird_id = obj_controller.hb;
if object_index == obj_hornbill bird_id = obj_controller.hbl;
if object_index == obj_red_billed bird_id = obj_controller.rb;