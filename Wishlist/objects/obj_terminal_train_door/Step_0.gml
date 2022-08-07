/// @description Insert description here


// change the code
if button_click(pos1_x,pos1_y)
{
	
}


// convert text to real command
if pos1_txt[0] == "true" pos1 = true;
else if pos1_txt[0] == "false" pos1 = false;

if pos2_txt[0] == "open" pos2 = "open";
else pos2 = "close";


// if hit the run button then run program in 1 sec
if keyboard_check_pressed(ord("O")) && alarm[0] == -1
{
	alarm[0] = 60;
}


