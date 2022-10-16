/// @description Insert description here
// You can write your code in this editor


pc_occupy_num = 0;

for (var i = 0; i < instance_number(obj_stand_pc); ++i;)
{
    var _inst = instance_find(obj_stand_pc,i);
	if _inst.occupied == true
	{
		pc_occupy_num ++;
	}
}
