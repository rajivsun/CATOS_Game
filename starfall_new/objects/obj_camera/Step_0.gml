/// @description update camera
// You can write your code in this editor
if !instance_exists(obj_player) exit;

//update destination
xTo = follow.x//+(mouse_x-follow.x)/4;
yTo = follow.y//+(mouse_y-follow.y)/4;

//xTo = follow.x + (mouse_x-follow.x)/4;
//yTo = follow.y + (mouse_y-follow.y)/4;


//updata object position
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



