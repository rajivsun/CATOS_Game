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


end_level = false;
current_level = 0;
show_UI = false;
key_alt = virtual_key_add(1600,900,200,100,vk_alt);
//virtual_key_show(key_alt);


for (var ii=0;ii<=2;ii++)
{
	instance_create_layer(tache[current_level][ii][0],tache[current_level][ii][1],"taches",obj_tache);
}

