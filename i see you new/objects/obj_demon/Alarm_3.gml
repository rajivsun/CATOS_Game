/// @description sound effect
// You can write your code in this editor

randomize()

if state == "chase" or state == "attack" or state == "cd"{
	alarm[3] = random_range(1,2)*room_speed;
	if !pause()
	audio_play_sound_on(sd_emitter2,choose(sd_monster5,sd_monster6,sd_monster7,sd_monster3),false,1);
	
}
else{
	alarm[3] = random_range(3,4)*room_speed;
	if !pause()
	audio_play_sound_on(sd_emitter2,choose(sd_monster1,sd_monster2,sd_monster4),false,1);
}