/// @description Insert description here
// You can write your code in this editor

global.grid_size = 16;
//var cell_width = 32;
//var cell_height = 32;

var hcells = room_width div global.grid_size;
var vcells = room_height div global.grid_size;

global.grid = mp_grid_create(0,0,hcells,vcells,global.grid_size,global.grid_size);

// add wall to grid
mp_grid_add_instances(global.grid,obj_wallsmall,true)
mp_grid_add_instances(global.grid,obj_furniture,true)

//show_debug_message(global.grid)

