/// @description update camera
// You can write your code in this editor

if room == rm_VILL_RIVER_123 or room == rm_VILL_RIVER_douji
{
	x = 315;
	y = 110;
	
	//updata camera view
	camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
}
else if room == rm_METRO_SCENE
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