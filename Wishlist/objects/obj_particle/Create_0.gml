/// @description Insert description here
// You can write your code in this editor
//depth = -9999999;
particle_system_far = part_system_create_layer("pointer",false);
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


