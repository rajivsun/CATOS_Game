/// @description Insert description here
// You can write your code in this editor

switch state
{
	case "0":
	if reveal == true
	{
		interactable = false;
		var _fx_tint = layer_get_fx("object_near");
		fx_set_parameter(_fx_tint, "g_Magnitude", 10);
		count ++;
		if count >= 120
		{
			part_particles_create(obj_particle.particle_system_far,73,100,obj_particle.particletype_reveal_smoke,1);
			instance_create_layer(73,100,"NPC",obj_tudigong);
			count = 0;
			state = "1";
		}
	}
	break;
	
	case "1":
	part_particles_create(obj_particle.particle_system_far,obj_tudigong.x+random_range(-10,10),
	obj_tudigong.y+random_range(-10,10),obj_particle.particletype_reveal_smoke,1);
	count ++;
	if count >= 60
	{
		state = "3";
		 
	}
	break;


}