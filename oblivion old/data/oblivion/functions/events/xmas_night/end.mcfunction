###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Рождественская ночь подходит к концу...","italic":true,"color":"aqua"},{"text":"\n"}]

###   F U N C T I O N
scoreboard players set xmas_night oblivion 0
scoreboard players add xmas_night_count oblivion 1
scoreboard players set obl.isevent oblivion 0
scoreboard players set obl.isbadevent oblivion 0
scoreboard players set xmas_killed_mobs oblivion 0
bossbar remove oblivion:xmas_event
execute if score grinch_alive oblivion matches 1 run function oblivion:abilities/bosses/grinch/cleanup/xmas_night_ended
execute as @e[tag=obl.xmas_mob] at @s run tp ~ -256 ~
execute as @e[tag=obl.xmas_mob] at @s run kill @s

execute if score xmas_killed_mobs oblivion matches 150.. run function oblivion:events/xmas_night/xmas_spirit.escaped

advancement grant @a[tag=obl.surviving.xm] only oblivion:advancements/events/survivexmasmoon
advancement grant @a[tag=obl.surviving.xm,scores={xmasmobs=25..,obl.death=0}] only oblivion:advancements/events/survivexmasmoonnodeath
advancement grant @a[tag=obl.surviving.xm,scores={xmasmobs=25..,obl.death=0,usedtotem=0}] only oblivion:advancements/events/survivexmasmoonnototems

tag @a remove obl.surviving.xm
tag @a remove obl.announced.xm

stopsound @a voice