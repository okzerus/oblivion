###   A N N O U N C E M E N T
execute unless entity @s[type=item] run tellraw @a [{"text":"\n"},{"text":"Наступило Солнечное затмение!","italic":true,"color":"green"},{"text":"\n"}]
execute if entity @s[type=item] run tellraw @a ["",{"text":"\n"},{"text":"Игрок ","color":"green"},{"selector":"@p","color":"yellow"},{"text":" вызвал Солнечное затмение!","color":"green"},{"text":"\n"}]

###   I F   S U M M O N N E D
execute if entity @s[type=item] run particle flame ~ ~.3 ~ 0 0 0 0 50 normal
execute if entity @s[type=item] run playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 1 1
execute if entity @s[type=item] run kill @s

###   E F F E C T S
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run effect give @s darkness 3 0 true

###   F U N C T I O N
execute as @a at @s if dimension minecraft:overworld run function oblivion:music/events/start.se
execute in overworld run gamerule mobGriefing false
scoreboard players set solar_eclipse oblivion 1
scoreboard players set obl.isevent oblivion 1
scoreboard players set obl.isbadevent oblivion 1
tag @a add obl.announced.se
tag @a add obl.surviving.se
execute if predicate oblivion:raining run weather clear 1000s