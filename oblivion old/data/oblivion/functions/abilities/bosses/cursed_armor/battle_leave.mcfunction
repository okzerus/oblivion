tellraw @a[tag=obl.in_battle.cursed_armor] ["",{"text":"\u2620 ","italic":true,"color":"dark_red"},{"selector":"@s","italic":true,"color":"dark_red"},{"text":" \u043f\u043e\u043a\u0438\u043d\u0443\u043b \u0431\u0438\u0442\u0432\u0443.","italic":true,"color":"red"}]
function oblivion:music/end
tag @s remove obl.in_battle.cursed_armor
tag @s remove obl.in_battle.boss

execute unless entity @a[tag=obl.in_battle.cursed_armor] run function oblivion:abilities/bosses/cursed_armor/statistics/battle_end.failure