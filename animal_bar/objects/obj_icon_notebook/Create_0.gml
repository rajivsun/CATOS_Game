/// @description Insert description here
// You can write your code in this editor


// init
outline_create(shader_outlineW);
initial_depth = depth;
show_ui = false;
rotation_plate = 0;
vk_quit = virtual_key_add(750,10,100,100,vk_escape);
vk_next = virtual_key_add(485,233,90,90,vk_left);
vk_previous = virtual_key_add(687,233,90,90,vk_right);
vk_play = virtual_key_add(585,233,90,90,vk_add);
//virtual_key_show(vk_quit);
alpha_fond = 0;
music_playing = true
y_to = 540;


character_list = [
spr_portrait_buck,
spr_portrait_wolf,
spr_portrait_lion,
spr_portrait_white_fox,
spr_portrait_gorilla_police,
spr_portrait_redpanda_police,
spr_portrait_hyena_twin_brothers,
];
npc_names = [
"阿泰" ,
"小灰",
"阿斯兰",
"吉儿", 
"威廉", 
"本杰明",
"黑岩兄弟"
];

npc_description = [
"一位意气风发的雄鹿",
"爱独来独往的灰狼",
"动物城议会会长",
"机制敏锐的大学生",
"正义的猩猩警长",
"红熊猫副警长",
"恶名昭著的孪生兄弟",
];

current_npc_index = 0;
//current_npc_list = ds_list_create()
//ds_list_add(current_npc_list,npc_names[0]);
//ds_list_add(current_npc_list,npc_names[1]);


