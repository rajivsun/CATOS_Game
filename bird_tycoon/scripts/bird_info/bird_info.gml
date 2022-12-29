// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bird_info(){
	wb = {
		_name : ["Western Bluebird","蓝知更鸟"],
		level : 1,
		birb_per_sec : 1,
		birb_coef : 1,
		sprite : spr_western_bluebird,
		object : obj_western_bluebird,
		level_need : 0,
		upgrade_need : 2,
		egg_time : 60*60*0.05,
		hatching : true,
		description : ["The western bluebird is a small stocky bird. ",""]
	};
	nc = {
		_name :   ["Northen Cardinal","北美红雀"],
		level : 1,
		birb_per_sec : 5,
		birb_coef : 1.2,
		sprite : spr_northen_cardinal,
		object : obj_northen_cardinal,
		level_need : 2,
		upgrade_need : 20,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["It can be found in southeastern Canada, through the eastern United States from Maine to Minnesota to Texas, New Mexico, southern Arizona, southern California, and south through Mexico, Belize, and Guatemala.",
		""],
	};
	ct = {
		_name : ["Cockatiel","玄风鹦鹉"],
		level : 1,
		birb_per_sec : 10,
		birb_coef : 1.5,
		sprite : spr_cockatiel,	
		object : obj_cockatiel,
		level_need : 6,
		upgrade_need : 100,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["The cockatiel, also known as weiro, or quarrion, is a medium-sized parrot that is a member of its own branch of the cockatoo family endemic to Australia. ",
		"玄凤鹦鹉，原产澳大利亚。十分活泼，\n喜爱亲近主人。两眼后斜下的颊部,\n各有一块圆形红斑,十分秀丽,具有很高的\n观赏价值。"]
	}
	br = {
		_name : ["Budgerigar","虎皮鹦鹉"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_budgerigar,
		object : obj_budgerigar,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["The budgerigar, also known as the common parakeet or shell parakeet, is a small, long-tailed, seed-eating parrot usually nicknamed the budgie.",""]
	}
	dw = {
		_name : ["Downy Woodpecker","绒啄木鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_downy_woodpecker,
		object : obj_downy_woodpecker,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	cr = {
		_name : ["Crow","乌鸦"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_crow,
		object : obj_crow,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	ar = {
		_name : ["American Robin","北美知更鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_american_robin,
		object : obj_american_robin,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	gf = {
		_name : ["Goldfinch","金翅雀"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_goldfinch,
		object : obj_goldfinch,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	pg = {
		_name : ["Pigeon","鸽子"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_pigeon,
		object : obj_pigeon,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	kf = {
		_name : ["Kingfisher","翠鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_kingfisher,
		object : obj_king_fiser,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	ja = {
		_name : ["Jay","松鸦"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_jay,
		object : obj_jay,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	tc = {
		_name : ["Toucan","巨嘴鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_toucan,
		object : obj_toucan,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	hb = {
		_name : ["Hummingbird","蜂鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_hummingbird,
		object : obj_hummingbird,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	hbl = {
		_name : ["Hornbill","双角犀鸟"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_hornbill,
		object : obj_hornbill,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
	rb = {
		_name : ["Red Billed","红嘴蓝鹊"],
		level : 1,
		birb_per_sec : 20,
		birb_coef : 2,
		sprite : spr_red_billed,
		object : obj_red_billed,
		level_need : 10,
		upgrade_need : 200,
		egg_time : 60*60*0.05,
		hatching : false,
		description : ["",""],
	}
}