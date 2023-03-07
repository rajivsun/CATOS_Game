/// @description update camera
// You can write your code in this editor

if room == rm_VILL_RIVER && obj_controller.camera_scene == true
{
	switch state 
	{
		case "0":
			count ++;
			x = 100;y=240;
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*0.9,cam_scene_size_y*0.9);
			if count >= 280
			{
				state = "1";
				count = 0;
			}
			break;
			
		case "1":
			x = 0;
			y = 0;
			x = clamp(x,view_w_half,room_width-view_w_half);
			y = clamp(y,view_h_half,room_height-view_h_half);
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.5,cam_scene_size_y*1.5);
		
			count++;
			if count >= 180
			{
				state = "2";
				count = 0;
			}
			break;
			
		case "2":
			x = 300;
			y = 150;
			//x = clamp(x,view_w_half,room_width-view_w_half);
			//y = clamp(y,view_h_half,room_height-view_h_half);
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.5,cam_scene_size_y*1.5);
		
			count++;
			if count >= 180
			{
				state = "3";
				count = 0;
			}
			break;
			
		case "3":
			count ++;
			x = obj_old_farmer.x;
			y = 140;
			//x = clamp(x,view_w_half,room_width-view_w_half);
			//y = clamp(y,view_h_half,room_height-view_h_half);
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1,cam_scene_size_y*1);
			obj_old_farmer.state = "run";
		
			if count >= 300
			{
				x = follow.x;
				y = follow.y-dist_player_cam;
				x = clamp(x,view_w_half,room_width-view_w_half);
				y = clamp(y,view_h_half,room_height-view_h_half);
				camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
				camera_set_view_size(cam,cam_w,cam_h);
				obj_controller.camera_scene = false;
			}
			break;
	}
}

if room == rm_BAR && obj_controller.camera_scene == true
{
	switch state 
	{
		case "0":
			count ++;
			x = 370; y = 155;
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.5,cam_scene_size_y*1.5);
			if count >= 300
			{
				state = "1";
				count = 0;
				//obj_controller.camera_scene = false;
				//take_action(obj_shaoda_big.action);
			}
			break;
			
		case "1":
			count ++;
			x = 660; y = 165;
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.2,cam_scene_size_y*1.2);
			if count >= 300
			{
				state = "2";
				count = 0;
				//obj_controller.camera_scene = false;
				//take_action(obj_shaoda_big.action);
			}
			break;
			
		case "2":
			count ++;
			x = 790;y=155;
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.5,cam_scene_size_y*1.5);
			if count >= 180
			{
				state = "2.5";
				count = 0;
				//obj_controller.camera_scene = false;
				take_action(obj_shaoda_big.action);
			}
			break;
			
		case "3":

			x = follow.x; y = follow.y;
			camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
			camera_set_view_size(cam,cam_scene_size_x*1.2,cam_scene_size_y*1.2);	
			camera_set_view_size(cam,
			lerp(camera_get_view_width(cam),cam_w,0.05),
			lerp(camera_get_view_height(cam),cam_h,0.05));
			x = clamp(x,view_w_half,room_width-view_w_half);
			y = clamp(y,view_h_half,room_height-view_h_half);
			obj_controller.camera_scene = false;
			break;
	}
}

else if room == rm_METRO_SCENE or room == rm_VILL_RIVER_travel or room == rm_VILL_RIVER_123
{
	x = xstart;
	y = ystart;
	camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
}
else
{
	if instance_exists(follow)
	{	
		//update destination
		xTo = follow.x;
		yTo = follow.y-dist_player_cam;	
	
		//camera zoom in 
		if instance_exists(obj_textbox) and cam_h >= 230 
		and room != rm_CITY_HOME
		{
			camera_set_view_size(cam,
			lerp(camera_get_view_width(cam),cam_w*0.7,0.05),
			lerp(camera_get_view_height(cam),cam_h*0.7,0.05));
		
			yTo = follow.y-30;	
		}
		else
		{
			camera_set_view_size(cam,
			lerp(camera_get_view_width(cam),cam_w,0.05),
			lerp(camera_get_view_height(cam),cam_h,0.05));
		}
	
		//update object position
		x += (xTo - x)/25;
		y += (yTo - y)/25;

		x = clamp(x,view_w_half,room_width-view_w_half);
		y = clamp(y,view_h_half,room_height-view_h_half);

		x += random_range( - shake_remain,shake_remain);
		y += random_range( - shake_remain,shake_remain);
		shake_remain = max( 0 , shake_remain - ((1/shake_length)*shake_magnitude));

		view_w_half = camera_get_view_width(cam)/2;
		view_h_half = camera_get_view_height(cam)/2;

		//updata camera view
		camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
	}
}
if instance_exists(obj_fishing_game) 
{
	if obj_fishing_game.state = "reward"
	{
		camera_set_view_size(cam,
		lerp(camera_get_view_width(cam),cam_w*0.7,0.05),
		lerp(camera_get_view_height(cam),cam_h*0.7,0.05));	
	}
}
//  -----------------  parallax background movement  ---------------------
#region parallax background 
if room == rm_HOME
{
	if layer_exists("bg_far") layer_x("bg_far",x/1.5);
}

if room == rm_FOREST or room == rm_FOREST_1
{
	//if layer_exists("bg_near") layer_x("bg_near",1.5*x);
	if layer_exists("bg_far") layer_x("bg_far",x/2);
	if layer_exists("bg_further") layer_x("bg_further",x/1.5);
	if layer_exists("bg_furthest") layer_x("bg_furthest",x/1.2);	
}

if room == rm_CITY_TOP or room == rm_CITY_HOME
{
	if layer_exists("bg_far") layer_x("bg_far",x/1.5);
	if layer_exists("bg_further") layer_x("bg_further",x/1.3);
	if layer_exists("bg_further_sub") layer_x("bg_further_sub",x/1.3+230);
	if layer_exists("bg_furthest") layer_x("bg_furthest",x/1.1);
}

if room == rm_METRO_STATION
{
	//if layer_exists("bg_fond") layer_x("bg_fond",x/5);
}

if room == rm_CITY_STREET
{	
	if layer_exists("bg_far") layer_x("bg_far",x/5);
	//if layer_exists("bg_near") layer_x("bg_near",x);	d
}
if room == rm_VILL_RIVER
{
	if layer_exists("bg_far") layer_x("bg_far",x/2);
	//if layer_exists("bg_near") layer_x("bg_near",x);	d
}
if room == rm_METRO_STATION_QUAI
{
	if layer_exists("bg_wall") layer_x("bg_wall",x/5);
	//if layer_exists("bg_near") layer_x("bg_near",x);	d
}
#endregion