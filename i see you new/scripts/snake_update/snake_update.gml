// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snake_update(){
	for (var i = 0;i<length;i++){
		
		xx[length - i] = xx[length - (i+1)];
		yy[length - i] = yy[length - (i+1)];
	}

	if dir == 0 yy[0] -=cell_size;
	if dir == 1 xx[0] +=cell_size;
	if dir == 2 yy[0] +=cell_size;
	if dir == 3 xx[0] -=cell_size;

	for (var i=1;i<length;i++){
		if xx[0] == xx[i] and yy[0] == yy[i]{
			fail = true;
			hit = i;
			return false;
		}
	}
	
	if xx[0] >= x2 or yy[0] >= y2 or xx[0] <= x1 or yy[0] <= y1{
		fail = true;
		return false;
	}
		
	return true;
	
}