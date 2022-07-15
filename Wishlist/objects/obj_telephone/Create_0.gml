/// @description Insert description here
// You can write your code in this editor

phone_ready = true;
current_node = 0;

txt[0] = [
["喂，老板。怎么样？",portrait.player],
["嗯，是这样的让。我和公司董事会也聊了一下。",portrait.boss],
["最近公司确实比较困难，部门资金都比较紧张，\n我们可能要让你走了。",portrait.boss],
["真的十分抱歉，我已经尽了最大努力了，\n公司高层态度很明确了。",portrait.boss],
["你们怎么能这样，我在这个公司呆了15年！",portrait.player],
["从我25岁毕业就一直在公司工作！\n我吃了多少苦你们知道吗？现在说裁就裁吗！",portrait.player],
["嗯，我们知道你确实很卖力的工作。",portrait.boss],
["但是你也知道现在这个行业竞争空前的大，\n高层很明确表示要大幅的缩减大龄员工。",portrait.boss],
["我们真的没有办法，让。",portrait.boss],
[0,[["能不能再争取一下",1],["你们真是太无情了",2]]],
];

txt[1] = [
["刘哥，能不能再和高层争取一下。\n看在我们那么多年的交情。",portrait.player],
["我已经争取很多次了让。我也没有办法，\n我权力就那么大，我能做的都做了。",portrait.boss],
["你们真是。。。",portrait.player],
["好了，让。该表达的我们也已经表达清楚了。",portrait.boss],
["我们再次抱歉作出这个决定。\n也祝你能尽快找到新的工作。",portrait.boss],
[1,0],
];

txt[2] = [
["你们真是太无情了！\n以后谁在你们公司工作谁倒霉！",portrait.player],
["好了，让。该表达的我们也已经表达清楚了。",portrait.boss],
["我们再次抱歉作出这个决定。\n也祝你能尽快找到新的工作。",portrait.boss],
[1,0],
];

virtual_key_add(1719,451,1880-1719,634-451,ord("P"));
