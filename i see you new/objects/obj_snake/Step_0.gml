/// @description Insert description here
// You can write your code in this editor

if sc < score_needed and fail == false {
	if keyboard_check_pressed(vk_up) && yy[0] - cell_size != yy[1] {dir = 0;alarm[0]=1;}
	if keyboard_check_pressed(vk_right) && xx[0] + cell_size!=xx[1] {dir = 1;alarm[0]=1;}
	if keyboard_check_pressed(vk_down) && yy[0] + cell_size!=yy[1] {dir = 2;alarm[0]=1;}
	if keyboard_check_pressed(vk_left) && xx[0] - cell_size!=xx[1] {dir = 3;alarm[0]=1;}

	if keyboard_check_pressed(vk_space) add_snake();

	if xx[0] == block_xx && yy[0] == block_yy{
		add_snake();
		
		var stack = true;
		while stack == true{
			stack = false;
			block_xx = (random_range(x1+96,x2-32) div cell_size)*cell_size;
			block_yy = (random_range(y1+96,y2-32) div cell_size)*cell_size;
			for (var i=1;i<length;i++){
				if xx[i]*cell_size == block_xx and yy[i]*cell_size == block_yy{
					stack = true
				}
			}
		}
		sc ++;
	}
}
else if ending == false{
	ending = true
	alarm[1] = 150;
}




