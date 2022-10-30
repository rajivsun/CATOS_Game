// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reload_animation(){
	if alarm[2] > 0
	{
		sprRU = spr_playerRUreload;
		sprRD = spr_playerRDreload;
		sprRL = spr_playerRLreload;
		sprRR = spr_playerRRreload;
		sprU = spr_playerUreload;
		sprD = spr_playerDreload;
		sprL = spr_playerLreload;
		sprR = spr_playerRreload;
	}
	else
	{	
		sprRU = spr_playerRU;
		sprRD = spr_playerRD;
		sprRL = spr_playerRL;
		sprRR = spr_playerRR;
		sprU = spr_playerU;
		sprD = spr_playerD;
		sprL = spr_playerL;
		sprR = spr_playerR;
	}

}