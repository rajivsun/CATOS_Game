/// @description create virtual keys
// You can write your code in this editor

switch _puzzle{
	case "safebox":
		vk_h = virtual_key_add(300,150,430,170,ord("H"));
		vk_ent = virtual_key_add(550,350,170,100,vk_enter);
		break;
		
		
	case "pc_password" :
		vk_h = virtual_key_add(350,100,600,170,ord("H"));
		vk_ent = virtual_key_add(550,300,200,80,vk_enter);
		//virtual_key_show(vk_h);
		//virtual_key_show(vk_ent);
		break;
		
	case "pc_usb":
		vk_h = virtual_key_add(350,100,600,170,ord("H"));
		vk_ent = virtual_key_add(550,300,200,80,vk_enter);
		//virtual_key_show(vk_h);
		//virtual_key_show(vk_ent);
		break;
}