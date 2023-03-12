/// @description Insert description here
// You can write your code in this editor


mark_index = 0;
mark_list = [];
mark_left = 3;
result = "none";
border_x1 = 200;
border_y1 = 100;
border_x2 = 1400;
border_y2 = 900;

tache[0] = 
[
[515,376],
[690,583],
[800,400],
];
tache[1] = 
[
[470,580],
[629,280],
[757,521],
[617,461],
];
tache[2] = 
[
[560,300],
[790,455],
[655,578],
[457,560],
];
tache[3] = 
[
[550,280],
[805,600],
[365,551],
[606,448],
];
broken[3] = 
[
[476,416],
[707,490],
]

end_level = false;
end_level2 = false;
current_level = obj_controller.robot_cleaner_game_level;
show_UI = false;
key_alt = virtual_key_add(1600,900,200,100,vk_alt);
//virtual_key_show(key_alt);

for (var ii=0;ii<=array_length(tache[current_level])-1;ii++)
{
	instance_create_layer(tache[current_level][ii][0],tache[current_level][ii][1],"taches",obj_tache);
}
if current_level = 3
{
	for (var ii=0;ii<=array_length(broken[current_level])-1;ii++)
	{
		instance_create_layer(broken[current_level][ii][0],broken[current_level][ii][1],"taches",obj_broken);
	}
}

