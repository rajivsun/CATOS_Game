/// @description Insert description here
// You can write your code in this editor

//xStart = camera_get_view_x(view_camera[0]);
xStart = 0;
//yStart = camera_get_view_y(view_camera[0]);
yStart = -10;
//spawn_width = camera_get_view_width(view_camera[0]);
spawn_width = room_width;
spawn_height = room_height;
emitterrain = part_emitter_create(obj_particle_setup.particle_system);

part_emitter_region(obj_particle_setup.particle_system,emitterrain,xStart,xStart+spawn_width,yStart,yStart+spawn_height,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system,emitterrain,obj_particle_setup.particletype_yellowleaf,1);
