// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function savegame(_section,_key,_value){
	//if file_exists("user.sav") file_delete("user.sav");
	
	//ini_open("user.sav")
	ini_write_real(_section,_key,_value);
	show_debug_message("save success")
	//ini_close();

}
function savegame_text(_section,_key,_text){
	//if file_exists("user.sav") file_delete("user.sav");
	
	//ini_open("user.sav")
	ini_write_string(_section,_key,_text);
	show_debug_message("save success")
	//ini_close();
}

function loadgame(_section,_key)
{
	 //if file_exists("user.sav")
	 //{
		// ini_open("user.sav");
		 return ini_read_real(_section,_key,0)
		 show_debug_message("load success")
	//	 ini_close();
	// }
	//else{
	//}
}

function loadgame_text(_section,_key)
{
	 //if file_exists("user.sav"){
		// ini_open("user.sav");
		 return ini_read_string(_section,_key,"haha")
		 show_debug_message("load success")
	//	 ini_close();
	// }
	//else{
	//}
}

function savegame_ext(_file,_section,_key,_value){
	
	ini_open(_file)
	ini_write_real(_section,_key,_value);
	show_debug_message("save success")
	ini_close();
	
}

function loadgame_ext(_file,_section,_key){
	 if file_exists(_file){
		 ini_open(_file);
		 return ini_read_real(_section,_key,0)
		 show_debug_message("load success")
		 ini_close();
	 }
	else{
		return 0
	}
}

