/// @description Insert description here
// You can write your code in this editor

particle_system_gui = part_system_create_layer("effect",false);
particle_system = part_system_create_layer("effect",false);
part_system_automatic_draw(particle_system_gui,false);


particletype_shine = part_type_create();
part_type_sprite(particletype_shine,spr_shine,0,0,0);
part_type_size(particletype_shine,2,2.2,0,0);
part_type_life(particletype_shine,30,35);
part_type_alpha3(particletype_shine,1,1,0);
//part_type_orientation(particletype_shine,0,359,0,0,0);
part_type_speed(particletype_shine,5,7 ,0,0);
part_type_direction(particletype_shine,0,360,0,0);
//part_type_color2(particletype_shine,c_lime,c_lime);


particletype_spark= part_type_create();
part_type_sprite(particletype_spark,spr_spark,0,0,0);
part_type_size(particletype_spark,1,1.2,0,0);
part_type_life(particletype_spark,30,35);
part_type_alpha3(particletype_spark,0,1,0);
//part_type_orientation(particletype_spark,0,359,0,0,0);
part_type_speed(particletype_spark,5,7 ,0,0);
part_type_direction(particletype_spark,0,360,0,0);
//part_type_color2(particletype_spark,c_lime,c_lime);


