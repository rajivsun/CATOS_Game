/// @description Insert description here
// You can write your code in this editor
//depth = -9999999;
particle_system = part_system_create_layer("system",false);
part_system_depth(particle_system,-999999);

//particletype_rain = part_type_create();
//part_type_sprite(particletype_rain,spr_rain,0,0,1);
//part_type_size(particletype_rain,1,1,0,0);
//part_type_gravity(particletype_rain,0.1,290);
//part_type_life(particletype_rain,150,200);
//part_type_orientation(particletype_rain,200,200,0,0,0);
////part_type_shape(particletype_smoke,pt_shape_spark);
////part_type_life(particletype_smoke,60,60);
////part_type_alpha3(particletype_smoke,0,1,0);
////part_type_orientation(particletype_smoke,0,359,0,0,0);
////part_type_speed(particletype_smoke,5,6 ,-0.2,0);
////part_type_direction(particletype_smoke,0,360,0,0);
////part_type_color2(particletype_smoke,c_white,c_yellow);

//particletype_flowerleaf = part_type_create();
//part_type_sprite(particletype_flowerleaf,spr_flowerleaf,0,1,0);
//part_type_gravity(particletype_flowerleaf,0.01,0);
//part_type_size(particletype_flowerleaf,0.3,0.5,-0.001,0);
//part_type_life(particletype_flowerleaf,150,200);
//part_type_alpha3(particletype_flowerleaf,0,1,0);
//part_type_orientation(particletype_flowerleaf,0,359,1,0,0);
//part_type_direction(particletype_flowerleaf,290,290,0,0);
//part_type_speed(particletype_flowerleaf,0.3,0.3,0,0);


particletype_yellowleaf = part_type_create();
part_type_sprite(particletype_yellowleaf,spr_yellowleaf,0,1,0);
part_type_gravity(particletype_yellowleaf,0.01,0);
part_type_size(particletype_yellowleaf,0.3,0.4,-0.001,0);
part_type_life(particletype_yellowleaf,150,200);
part_type_alpha3(particletype_yellowleaf,0,1,0);
part_type_orientation(particletype_yellowleaf,0,359,1,0,0);
part_type_direction(particletype_yellowleaf,290,290,0,0);
part_type_speed(particletype_yellowleaf,0.3,0.3,0,0);
