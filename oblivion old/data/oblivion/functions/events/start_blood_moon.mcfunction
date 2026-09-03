###   A N N O U N C E M E N T
execute unless entity @s[type=item] run tellraw @a [{"text":"\n"},{"text":"Восходит кровавая луна..","italic":true,"color":"red"},{"text":"\n"}]
execute if entity @s[type=item] run tellraw @a ["",{"text":"\n"},{"text":"Игрок ","color":"red"},{"selector":"@p","color":"yellow"},{"text":" вызвал Кровавую луну!","color":"red"},{"text":"\n"}]

###   I F   S U M M O N N E D
execute if entity @s[type=item] run particle block redstone_block ~ ~.3 ~ 0 0 0 0 50 normal
execute if entity @s[type=item] run playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 1 1
execute if entity @s[type=item] run kill @s

###   E F F E C T S
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 1 0
execute as @a at @s if dimension minecraft:overworld run effect give @s darkness 3 0 true

###   F U N C T I O N
execute as @a at @s if dimension minecraft:overworld run function oblivion:music/events/start.bm
execute in overworld run gamerule naturalRegeneration false
execute in overworld run gamerule mobGriefing false
scoreboard players set blood_moon oblivion 1
scoreboard players set next.blood_moon oblivion 0
scoreboard players set obl.isevent oblivion 1
scoreboard players set obl.isbadevent oblivion 1
tag @a add obl.announced.bm
tag @a add obl.surviving.bm
execute if predicate oblivion:raining run weather clear 1000s