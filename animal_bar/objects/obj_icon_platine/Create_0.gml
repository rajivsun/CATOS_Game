/// @description Insert description here
// You can write your code in this editor


// init
outline_create(shader_outlineW);
initial_depth = depth;
show_platine = false;
rotation_plate = 0;
vk_quit = virtual_key_add(750,10,100,100,vk_escape);
vk_next = virtual_key_add(485,233,90,90,vk_left);
vk_previous = virtual_key_add(687,233,90,90,vk_right);
vk_play = virtual_key_add(585,233,90,90,vk_add);
//virtual_key_show(vk_quit);
alpha_fond = 0;
music_playing = true


//play music
audio_stop_all();
//audio_play_sound(mc_jazz_3,99,true);
// music info 
music_names = [
"Bet on it ",
"Jazz Lounge | Street Food",
"Ludwig Van Beethoven | Aus Goethe"
];

arthor_names = [
"Silent Partner",
"Alex Productions",
"Nesrality",
];

music_list = [
mc_jazz_3,
mc_jazz_1, 
mc_jazz_2,
];
current_music = 0;