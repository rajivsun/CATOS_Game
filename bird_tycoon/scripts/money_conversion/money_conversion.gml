// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function money_conversion(money_num){
	
	var money_to_draw;
	if money_num < 1000
		money_to_draw = string(money_num)
	if money_num >= 1000 and money_num < 1000000
	{
		var divv = money_num div 1000;
		var modd = money_num mod 1000;
		var dec = modd div (1000/100)
		money_to_draw = string(divv)+"."+string(dec)+"K";
	}
	else if money_num >= 1000000 and money_num < 1000000000
	{
		var divv = money_num div 1000000;
		var modd = money_num mod 1000000;
		var dec = modd div (1000000/100)
		money_to_draw = string(divv)+"."+string(dec)+"M";	
	}
	
	return money_to_draw
}