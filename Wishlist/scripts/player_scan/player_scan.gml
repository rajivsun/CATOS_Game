// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_scan_switch(){
	
	if scan_world == true
	{	
		layer_enable_fx("ef_scan",false);
		scan_world = false;
		fx_hack_thres = 1;
	}
	else
	{
		scan_world = true;
		layer_enable_fx("ef_scan",true);		
		layer_set_visible("ef_scan",true);
	}
}