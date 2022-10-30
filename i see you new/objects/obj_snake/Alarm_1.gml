/// @description Insert description here
// You can write your code in this editor

if sc >= score_needed{
	obj_puzzlebox.solve = true;
}

else if fail == true{
	obj_puzzlebox.solve = false;
	instance_destroy(obj_puzzlebox);
}
instance_destroy();