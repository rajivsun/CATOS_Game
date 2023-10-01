/// @description Insert description here
// You can write your code in this editor
//depth = -9999999;
particle_system = part_system_create_layer("world",false);
part_system_depth(particle_system,-999999);


particletype_smoke = part_type_create();
part_type_shape(particletype_smoke,pt_shape_spark);
part_type_size(particletype_smoke,4,4,0,0);
part_type_life(particletype_smoke,60,60);
part_type_alpha3(particletype_smoke,0,1,0);
part_type_orientation(particletype_smoke,0,359,0,0,0);
//part_type_speed(particletype_smoke,5,6 ,-0.2,0);
part_type_direction(particletype_smoke,0,360,0,0);
part_type_color2(particletype_smoke,c_white,c_yellow);

#region demon
particletype_demon = part_type_create();
part_type_shape(particletype_demon,pt_shape_pixel);
part_type_size(particletype_demon,1.5,2,-0.01,0);
part_type_life(particletype_demon,40,50);
part_type_alpha3(particletype_demon,0.0,0.7,0);
part_type_orientation(particletype_demon,0,359,0,0,0);
part_type_speed(particletype_demon,3,4 ,-0.2,0);
part_type_direction(particletype_demon,0,360,0,0);
part_type_color2(particletype_demon,c_red,c_red);

particletype_demon_chase = part_type_create();
part_type_shape(particletype_demon_chase,pt_shape_pixel);
part_type_size(particletype_demon_chase,2,2.5,-0.01,0);
part_type_life(particletype_demon_chase,40,50);
part_type_alpha3(particletype_demon_chase,0.0,0.7,0);
part_type_orientation(particletype_demon_chase,0,359,0,0,0);
part_type_speed(particletype_demon_chase,4,5 ,-0.2,0);
part_type_direction(particletype_demon_chase,0,360,0,0);
part_type_color2(particletype_demon_chase,c_red,c_red);

particletype_demon_dead = part_type_create();
part_type_shape(particletype_demon_dead,pt_shape_pixel);
part_type_size(particletype_demon_dead,2,2.5,-0.01,0);
part_type_life(particletype_demon_dead,50,60);
part_type_alpha3(particletype_demon_dead,0.0,0.7,0);
part_type_orientation(particletype_demon_dead,0,359,0,0,0);
part_type_speed(particletype_demon_dead,4,6 ,-0.2,0);
part_type_direction(particletype_demon_dead,0,360,0,0);
part_type_color2(particletype_demon_dead,c_red,c_red);

#endregion

#region small demon
particletype_demonsmall = part_type_create();
part_type_shape(particletype_demonsmall,pt_shape_pixel);
part_type_size(particletype_demonsmall,1.5,2,-0.01,0);
part_type_life(particletype_demonsmall,40,50);
part_type_alpha3(particletype_demonsmall,0.0,0.7,0);
part_type_orientation(particletype_demonsmall,0,359,0,0,0);
part_type_speed(particletype_demonsmall,2.5,3.5 ,-0.2,0);
part_type_direction(particletype_demonsmall,0,360,0,0);
part_type_color2(particletype_demonsmall,c_red,c_yellow);

particletype_demonsmall_chase = part_type_create();
part_type_shape(particletype_demonsmall_chase,pt_shape_pixel);
part_type_size(particletype_demonsmall_chase,2,2.5,-0.01,0);
part_type_life(particletype_demonsmall_chase,40,50);
part_type_alpha3(particletype_demonsmall_chase,0.0,0.7,0);
part_type_orientation(particletype_demonsmall_chase,0,359,0,0,0);
part_type_speed(particletype_demonsmall_chase,3,4 ,-0.2,0);
part_type_direction(particletype_demonsmall_chase,0,360,0,0);
part_type_color2(particletype_demonsmall_chase,c_red,c_yellow);

particletype_demonsmall_dead = part_type_create();
part_type_shape(particletype_demonsmall_dead,pt_shape_pixel);
part_type_size(particletype_demonsmall_dead,2,2.5,-0.01,0);
part_type_life(particletype_demonsmall_dead,50,60);
part_type_alpha3(particletype_demonsmall_dead,0.0,0.7,0);
part_type_orientation(particletype_demonsmall_dead,0,359,0,0,0);
part_type_speed(particletype_demonsmall_dead,3,5 ,-0.2,0);
part_type_direction(particletype_demonsmall_dead,0,360,0,0);
part_type_color2(particletype_demonsmall_dead,c_red,c_yellow);

#endregion

#region yellow demon

particletype_demonYELLOW = part_type_create();
part_type_shape(particletype_demonYELLOW,pt_shape_pixel);
part_type_size(particletype_demonYELLOW,1.5,2,-0.01,0);
part_type_life(particletype_demonYELLOW,40,50);
part_type_alpha3(particletype_demonYELLOW,0.0,0.7,0);
part_type_orientation(particletype_demonYELLOW,0,359,0,0,0);
part_type_speed(particletype_demonYELLOW,2.5,3.5 ,-0.2,0);
part_type_direction(particletype_demonYELLOW,0,360,0,0);
part_type_color2(particletype_demonYELLOW,c_yellow,c_yellow);

particletype_demonYELLOW_chase = part_type_create();
part_type_shape(particletype_demonYELLOW_chase,pt_shape_pixel);
part_type_size(particletype_demonYELLOW_chase,2,2.5,-0.01,0);
part_type_life(particletype_demonYELLOW_chase,40,50);
part_type_alpha3(particletype_demonYELLOW_chase,0.0,0.7,0);
part_type_orientation(particletype_demonYELLOW_chase,0,359,0,0,0);
part_type_speed(particletype_demonYELLOW_chase,3,4 ,-0.2,0);
part_type_direction(particletype_demonYELLOW_chase,0,360,0,0);
part_type_color2(particletype_demonYELLOW_chase,c_yellow,c_yellow);

particletype_demonYELLOW_dead = part_type_create();
part_type_shape(particletype_demonYELLOW_dead,pt_shape_pixel);
part_type_size(particletype_demonYELLOW_dead,2,2.5,-0.01,0);
part_type_life(particletype_demonYELLOW_dead,50,60);
part_type_alpha3(particletype_demonYELLOW_dead,0.0,0.7,0);
part_type_orientation(particletype_demonYELLOW_dead,0,359,0,0,0);
part_type_speed(particletype_demonYELLOW_dead,3,5 ,-0.2,0);
part_type_direction(particletype_demonYELLOW_dead,0,360,0,0);
part_type_color2(particletype_demonYELLOW_dead,c_yellow,c_yellow);

#endregion

#region big demon
particletype_demonbig = part_type_create();
part_type_shape(particletype_demonbig,pt_shape_pixel);
part_type_size(particletype_demonbig,1.5*1.15,2*1.15,-0.01,0);
part_type_life(particletype_demonbig,40,50);
part_type_alpha3(particletype_demonbig,0.0,0.7,0);
part_type_orientation(particletype_demonbig,0,359,0,0,0);
part_type_speed(particletype_demonbig,3*1.15,4*1.15 ,-0.2,0);
part_type_direction(particletype_demonbig,0,360,0,0);
part_type_color2(particletype_demonbig,c_red,c_yellow);

particletype_demonbig_chase = part_type_create();
part_type_shape(particletype_demonbig_chase,pt_shape_pixel);
part_type_size(particletype_demonbig_chase,2*1.15,2.5*1.15,-0.01,0);
part_type_life(particletype_demonbig_chase,40,50);
part_type_alpha3(particletype_demonbig_chase,0.0,0.7,0);
part_type_orientation(particletype_demonbig_chase,0,359,0,0,0);
part_type_speed(particletype_demonbig_chase,4*1.15,5*1.15 ,-0.2,0);
part_type_direction(particletype_demonbig_chase,0,360,0,0);
part_type_color2(particletype_demonbig_chase,c_red,c_yellow);

particletype_demonbig_dead = part_type_create();
part_type_shape(particletype_demonbig_dead,pt_shape_pixel);
part_type_size(particletype_demonbig_dead,2*1.15,2.5*1.15,-0.01,0);
part_type_life(particletype_demonbig_dead,50,60);
part_type_alpha3(particletype_demonbig_dead,0.0,0.7,0);
part_type_orientation(particletype_demonbig_dead,0,359,0,0,0);
part_type_speed(particletype_demonbig_dead,4*1.15,6*1.15 ,-0.2,0);
part_type_direction(particletype_demonbig_dead,0,360,0,0);
part_type_color2(particletype_demonbig_dead,c_red,c_yellow);

#endregion

particletype_bullethitwall = part_type_create();
part_type_shape(particletype_bullethitwall,pt_shape_pixel);
part_type_size(particletype_bullethitwall,1.5,2,0,0);
part_type_life(particletype_bullethitwall,30,35);
part_type_alpha3(particletype_bullethitwall,1,0.3,0);
part_type_orientation(particletype_bullethitwall,0,359,0,0,0);
part_type_speed(particletype_bullethitwall,3,4 ,-0.2,0);
part_type_direction(particletype_bullethitwall,0,360,0,0);
part_type_color2(particletype_bullethitwall,c_white,c_yellow);


particletype_car_dust = part_type_create();
part_type_shape(particletype_car_dust,pt_shape_smoke);
part_type_size(particletype_car_dust,0.1,0.5,0,0);
part_type_life(particletype_car_dust,30,40);
part_type_alpha3(particletype_car_dust,1,0.3,0);
part_type_orientation(particletype_car_dust,0,359,0,0,0);
part_type_speed(particletype_car_dust,3,4 ,-0.2,0);
part_type_direction(particletype_car_dust,0,90,0,0);
part_type_color2(particletype_car_dust,c_ltgray,c_gray);