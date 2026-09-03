tag @s add obl.in_battle.black_death
tag @s add obl.in_battle.boss
function oblivion:music/playing/start/black_death
tellraw @a[tag=obl.in_battle.black_death] ["",{"text":"\u2605 ","italic":true,"color":"gold"},{"selector":"@s","italic":true,"color":"gold"},{"text":" \u043f\u0440\u0438\u0441\u043e\u0435\u0434\u0438\u043d\u0438\u043b\u0441\u044f \u043a \u0431\u0438\u0442\u0432\u0435!","italic":true,"color":"yellow"}]
