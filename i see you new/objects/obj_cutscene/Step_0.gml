/// @description Insert description here
// You can write your code in this editor


var current_action = action[scene];

var len = array_length_1d(current_action) -1 ;
					
switch len{
	case 0: script_execute(current_action[0]);break;
	case 1: script_execute(current_action[0],current_action[1]);break;
	case 2: script_execute(current_action[0],current_action[1],current_action[2]);break;
	case 3: script_execute(current_action[0],current_action[1],current_action[2],current_action[3]);break;
	case 4: script_execute(current_action[0],current_action[1],current_action[2],current_action[3],current_action[4]);break;
	case 5: script_execute(current_action[0],current_action[1],current_action[2],current_action[3],current_action[4],current_action[5]);break;
	case 6: script_execute(current_action[0],current_action[1],current_action[2],current_action[3],current_action[4],current_action[5],current_action[6]);break;
	case 7: script_execute(current_action[0],current_action[1],current_action[2],current_action[3],current_action[4],current_action[5],current_action[6],current_action[7]);break;
}				
