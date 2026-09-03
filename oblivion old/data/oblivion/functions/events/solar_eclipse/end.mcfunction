###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Солнечное затмение закончилось!","italic":true,"color":"green"},{"text":"\n"}]

###   F U N C T I O N
scoreboard players set solar_eclipse oblivion 0
scoreboard players add solar_eclipse_count oblivion 1
scoreboard players set obl.isevent oblivion 0
scoreboard players set obl.isbadevent oblivion 0
execute if score mothron_alive oblivion matches 1 run function oblivion:abilities/bosses/mothron/cleanup/solar_eclipse_ended
# execute in minecraft:overworld run kill @e[type=fireball,distance=0..]
# execute in minecraft:overworld run kill @e[type=small_fireball,distance=0..]
# kill @e[tag=mothronegg]
# kill @e[tag=mothronfireball]
# kill @e[tag=mothronland]
# gamerule mobGriefing true
execute as @e[tag=obl.solar_mob] at @s run tp ~ -256 ~
execute as @e[tag=obl.solar_mob] at @s run kill @s

advancement grant @a[tag=obl.surviving.se] only oblivion:advancements/events/survivesolareclipse
advancement grant @a[tag=obl.surviving.se,scores={solarmobs=25..,obl.death=0}] only oblivion:advancements/events/survivesolareclipsenodeath
advancement grant @a[tag=obl.surviving.se,scores={solarmobs=25..,obl.death=0,usedtotem=0}] only oblivion:advancements/events/survivesolareclipsenototems

tag @a remove obl.surviving.se
tag @a remove obl.announced.se

stopsound @a voice