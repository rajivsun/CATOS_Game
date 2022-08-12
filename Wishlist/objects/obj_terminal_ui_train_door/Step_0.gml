/// @description Insert description here

// exiting the program
if alarm[1] > 0 exit;

// change the code
if button_click(pos1_x,pos1_y) select = 1;
if button_click(pos2_x,pos2_y) select = 2;


if select != 0
{
	for (var i=0;i<array_length(options);i++)
	{
		if button_click(1454,315+i*120,400,100) 
		{
			pos_txt[select-1][0] = options[i][0];
			pos_txt[select-1][1] = options[i][1];
			select = 0;
		}
	}
}


// convert text to real command
if pos_txt[0][0] == "true" pos1 = true;
else if pos_txt[0][0] == "false" pos1 = false;

if pos_txt[1][0] == "open" pos2 = "open";
else pos2 = "close";


// if hit the run button then run program in 1 sec
if keyboard_check_pressed(ord("O")) && alarm[0] == -1
{
	alarm[0] = 60;
}


