/// @description Insert description here
// You can write your code in this editor

// camera movement
keyright = keyboard_check(vk_right);
keyleft = keyboard_check(vk_left);

var move = (keyright - keyleft)*5;
follow.x += move

if follow.x >= room_width - 480/2 follow.x = room_width - 480/2;
if follow.x <= 480/2 follow.x = 480/2;



//update destination
xTo = follow.x;
yTo = follow.y;

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


var lay_id = layer_get_id("bg_mountain");
layer_x(lay_id,x/6-480/6);
var lay_id = layer_get_id("bg_ground");
layer_x(lay_id,x/6-480/6);
var lay_id = layer_get_id("UI");
layer_x(lay_id,x-480/2);