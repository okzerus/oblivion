###   A N N O U N C E M E N T
execute unless entity @s[type=item] run tellraw @a [{"text":"\n"},{"text":"Наступает Рождественская ночь!","italic":true,"color":"aqua"},{"text":"\n"}]
execute if entity @s[type=item] run tellraw @a ["",{"text":"\n"},{"text":"Игрок ","color":"aqua"},{"selector":"@p","color":"yellow"},{"text":" вызвал Рождественскую ночь!","color":"aqua"},{"text":"\n"}]

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
execute as @a at @s if dimension minecraft:overworld run function oblivion:music/events/start.xm
execute in overworld run gamerule mobGriefing false
scoreboard players set xmas_night oblivion 1
scoreboard players set next.xmas_night oblivion 0
scoreboard players set obl.isevent oblivion 1
scoreboard players set obl.isbadevent oblivion 1
tag @a add obl.announced.xm
tag @a add obl.surviving.xm
execute if predicate oblivion:raining run weather clear 1000s

bossbar add oblivion:xmas_event "Рождественская ночь"
bossbar set oblivion:xmas_event players @a
bossbar set oblivion:xmas_event color blue
bossbar set oblivion:xmas_event max 150
bossbar set oblivion:xmas_event value 0
bossbar set oblivion:xmas_event style notched_20
bossbar set oblivion:xmas_event visible true