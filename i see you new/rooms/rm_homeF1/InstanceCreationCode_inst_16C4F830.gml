actionable = true;
if obj_main.language == "chinese"
{
	actiontext = ["一盆热的肉汤，肯定是番刚刚做好的。"]
}
else if obj_main.language == "english"
{
	actiontext = ["A hot meat soup, Liz must have made it for me just now."]
}

actionspk = [obj_player];

action1 = [
[itembox,id,false],
[textbox,actiontext,actionspk],
]

action = [action1];