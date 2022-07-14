// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shoot_animation(){
	if room == rm_museum exit;
	if obj_inventory.ds_weapon_ready[# 0,other.current_weapon].object_index == obj_pistol
	{
		sprUS = spr_playerUS;
		sprDS = spr_playerDS;
		sprLS = spr_playerLS;
		sprRS = spr_playerRS;
		sprURS = spr_playerURS;
		sprDRS = spr_playerDRS;
		sprULS = spr_playerULS;
		sprDLS = spr_playerDLS;

		sprRURS = spr_playerRURS;
		sprRULS = spr_playerRULS;
		sprRDRS = spr_playerRDRS;
		sprRDLS = spr_playerRDLS;
		sprRUS = spr_playerRUS;
		sprRDS = spr_playerRDS;
		sprRLS = spr_playerRLS;
		sprRRS = spr_playerRRS;
	}
	else
	{	
		sprUS = spr_playerUSbig;
		sprDS = spr_playerDSbig
		sprLS = spr_playerLSbig;
		sprRS = spr_playerRSbig;
		sprURS = spr_playerURSbig;
		sprDRS = spr_playerDRSbig;
		sprULS = spr_playerULSbig;
		sprDLS = spr_playerDLSbig;

		sprRURS = spr_playerRURSbig;
		sprRULS = spr_playerRULSbig;
		sprRDRS = spr_playerRDRSbig;
		sprRDLS = spr_playerRDLSbig;
		sprRUS = spr_playerRUSbig;
		sprRDS = spr_playerRDSbig;
		sprRLS = spr_playerRLSbig;
		sprRRS = spr_playerRRSbig;
	}
}
