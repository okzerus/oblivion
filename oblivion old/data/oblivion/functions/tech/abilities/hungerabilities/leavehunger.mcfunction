tellraw @a[tag=inbattlewithhunger,distance=..100] ["",{"text":"\u2620 ","italic":true,"color":"dark_red"},{"selector":"@s","italic":true,"color":"dark_red"},{"text":" \u043f\u043e\u043a\u0438\u043d\u0443\u043b \u0431\u0438\u0442\u0432\u0443.","italic":true,"color":"red"}]
stopsound @s voice
scoreboard players set @s hungermusic 1
tag @s remove inbattlewithhunger