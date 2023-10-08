/// @description Insert description here
// You can write your code in this editor


particle_system = part_system_create_layer("effect",false);
part_system_depth(particle_system,-999999);


particletype_explosion = part_type_create();
//part_type_shape(particletype_explosion,pt_shape_pixel);
part_type_sprite(particletype_explosion,spr_effect_break,false,false,false)
part_type_size(particletype_explosion,0.15,0.2,-0.01,0);
part_type_life(particletype_explosion,15,20);
//part_type_alpha3(particletype_explosion,1,1,0);
part_type_orientation(particletype_explosion,0,359,0,0,0);
part_type_speed(particletype_explosion,4,5,0,0);
part_type_direction(particletype_explosion,60,120,0,0);
//part_type_direction(particletype_explosion,0,360,0,0);
//part_type_color2(particletype_explosion,c_green,c_purple);
part_type_colour_mix(particletype_explosion, c_green,c_purple);
part_type_gravity(particletype_explosion,0.5,270)
