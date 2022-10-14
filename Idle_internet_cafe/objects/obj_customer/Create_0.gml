/// @description Insert description here
// You can write your code in this editor


state = "to_reception";

wait_count = 0;
reception_cd = 240;
to_pc_id = -1;
count_playing = 0;
count_playing_time = 0;
to_reception_x = 0;
to_reception_y = 0;

image_xscale = 2;
image_yscale = 2;



// ------- sprite --------
spr_head = choose(spr_customer_head1);
spr_upper = choose(spr_customer_upper1);
spr_lower = choose(spr_customer_lower1);
spr_walk = choose(spr_customer_walk1);
walk_count = 0;