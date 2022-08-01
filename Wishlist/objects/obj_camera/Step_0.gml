/// @description update camera
// You can write your code in this editor

if instance_exists(follow)
{
	//update destination
	xTo = follow.x;
	yTo = follow.y-dist_player_cam;	
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

if room == rm_HOME
{
	if layer_exists("bg_far") layer_x("bg_far",x/1.5);
}

if room == rm_FOREST
{
	//if layer_exists("bg_near") layer_x("bg_near",1.5*x);
	if layer_exists("bg_far") layer_x("bg_far",x/2);
	if layer_exists("bg_further") layer_x("bg_further",x/1.5);
	if layer_exists("bg_furthest") layer_x("bg_furthest",x/1.2);	
}

if room == rm_CITY_TOP
{
	//if layer_exists("bg_near") layer_x("bg_near",1.5*x);
	if layer_exists("bg_far") layer_x("bg_far",x/1.5);
	//if layer_exists("bg_further") layer_x("bg_further",x/1.5);
	//if layer_exists("bg_furthest") layer_x("bg_furthest",x/1.2);	
}