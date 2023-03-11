/// @description Insert description here
// You can write your code in this editor
//depth = -9999999;
particle_system_far = part_system_create_layer("effect",false);
//part_system_depth(particle_system,-99999);

particletype_shine = part_type_create();
part_type_shape(particletype_shine,pt_shape_pixel);
part_type_size(particletype_shine,0.5,1,0,0);
part_type_life(particletype_shine,240,240);
part_type_alpha3(particletype_shine,0,0.5,1);
//part_type_orientation(particletype_shine,0,359,0,0,0);
part_type_speed(particletype_shine,0.1,0.1 ,0,0);
part_type_direction(particletype_shine,0,360,0,0);
part_type_color2(particletype_shine,c_aqua,c_aqua);

particletype_hit_flechette = part_type_create();
part_type_shape(particletype_hit_flechette,pt_shape_pixel);
part_type_size(particletype_hit_flechette,0.5,1,0,0);
part_type_life(particletype_hit_flechette,60,70);
//part_type_alpha3(particletype_hit_flechette,0,0.5,1);
//part_type_orientation(particletype_hit_flechette,0,359,0,0,0);
part_type_speed(particletype_hit_flechette,1,1 ,0,0);
part_type_direction(particletype_hit_flechette,0,360,0,0);
part_type_color2(particletype_hit_flechette,c_yellow,c_yellow);

particletype_broken_spark = part_type_create();
part_type_shape(particletype_broken_spark,pt_shape_pixel);
part_type_size(particletype_broken_spark,1,2,0,0);
part_type_life(particletype_broken_spark,30,40);
//part_type_alpha3(particletype_hit_broken_spark,0,0.5,1);
//part_type_orientation(particletype_hit_broken_spark,0,359,0,0,0);
part_type_speed(particletype_broken_spark,1,1 ,0,0);
part_type_direction(particletype_broken_spark,0,180,0,0);
part_type_color2(particletype_broken_spark,c_yellow,c_yellow);
part_type_gravity(particletype_broken_spark,0.05,270);

particletype_broken_smoke = part_type_create();
part_type_shape(particletype_broken_smoke,pt_shape_smoke);
part_type_size(particletype_broken_smoke,0.5,2,0,0);
part_type_life(particletype_broken_smoke,80,100);
part_type_alpha3(particletype_broken_smoke,0,0.5,0);
part_type_orientation(particletype_broken_smoke,0,359,0,0,0);
part_type_speed(particletype_broken_smoke,0.5,0.7 ,0,0);
part_type_direction(particletype_broken_smoke,90,90,0,0);
part_type_color2(particletype_broken_smoke,c_dkgray,c_black);
//part_type_gravity(particletype_broken_smoke,0.05,270);


particletype_reveal_smoke = part_type_create();
part_type_shape(particletype_reveal_smoke,pt_shape_explosion);
part_type_size(particletype_reveal_smoke,0.05,2,-0.01,0);
part_type_life(particletype_reveal_smoke,80,100);
part_type_alpha3(particletype_reveal_smoke,1,0,0);
part_type_orientation(particletype_reveal_smoke,0,359,0,0,0);
part_type_speed(particletype_reveal_smoke,0.5,0.7 ,0,0);
part_type_direction(particletype_reveal_smoke,90,90,0,0);
part_type_color3(particletype_reveal_smoke,c_gray,c_ltgray,c_dkgray);
//part_type_gravity(particletype_broken_smoke,0.05,270);