/// @description Insert description here
// You can write your code in this editor
joystickSx = 180;
joystickSy = 450;
shotSx = 1100;
shotSy = 500;

joystickMx = joystickSx;
joystickMy = joystickSy;
shotMx = shotSx;
shotMy = shotSy;

joystickW = 150/2;
shotW = 150/2;

move = device_mouse_check_button(0,mb_left);
move = 0;
shoot = 0;

release = false;
ready = false;
r = 50;
dirtofinger = 0;
dirtofinger2 = 0;
