###   V I L L A G E R   H O N E S T   R E A C T I O N
execute if entity @a[distance=..7] run function oblivion:rng
execute if entity @a[distance=..7] if score randomizer obl.rng matches 1..33 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Сегодня на ужин - шашлындос!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 34..66 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Человек - вершина пищевой цепи!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 67..100 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Желаете добавить соус? :)","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Откат (7:00)","color":"red"}]',CustomNameVisible:1b}
execute if block ~ ~ ~ air run setblock ~ ~ ~ structure_void
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
scoreboard players set @s obl.villager.cooldown 8400
tag @s add obl.villager.cooldown

###   M A K E   W A R ,   N O T   L O V E
## It was fucking painful to code but I just wanted to get the fuck out of here as fast as possible
tag @e[type=cow,distance=..7] add obl.temp.kill
tag @e[type=sheep,distance=..7] add obl.temp.kill
tag @e[type=chicken,distance=..7] add obl.temp.kill
tag @e[type=pig,distance=..7] add obl.temp.kill
tag @e[type=rabbit,distance=..7] add obl.temp.kill
tag @e[type=mooshroom,distance=..7] add obl.temp.kill

execute at @e[type=cow,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #cow_count oblivion 1
execute at @e[type=sheep,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #sheep_count oblivion 1
execute at @e[type=chicken,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #chicken_count oblivion 1
execute at @e[type=pig,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #pig_count oblivion 1
execute at @e[type=rabbit,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #rabbit_count oblivion 1
execute at @e[type=mooshroom,distance=..7,predicate=!oblivion:on.fire] run scoreboard players add #mooshroom_count oblivion 1

execute at @e[type=cow,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #cow_count_fire oblivion 1
execute at @e[type=sheep,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #sheep_count_fire oblivion 1
execute at @e[type=chicken,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #chicken_count_fire oblivion 1
execute at @e[type=pig,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #pig_count_fire oblivion 1
execute at @e[type=rabbit,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #rabbit_count_fire oblivion 1
execute at @e[type=mooshroom,distance=..7,predicate=oblivion:on.fire] run scoreboard players add #mooshroom_count_fire oblivion 1

execute if score #cow_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/cow
execute if score #sheep_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/sheep
execute if score #chicken_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/chicken
execute if score #pig_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/pig
execute if score #rabbit_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/rabbit
execute if score #mooshroom_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/mooshroom

execute if score #cow_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/cow_fire
execute if score #sheep_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/sheep_fire
execute if score #chicken_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/chicken_fire
execute if score #pig_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/pig_fire
execute if score #rabbit_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/rabbit_fire
execute if score #mooshroom_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/mooshroom_fire

execute as @e[tag=obl.temp.kill,distance=..7] run data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @e[tag=obl.temp.kill,distance=..7]

###   A D V A N C E M E N T
advancement grant @a[distance=..5] only oblivion:advancements/mobs/overworld/villagers/butcher

###   C L E A N U P
execute as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @e[type=item,tag=obl.temp.editing,scores={obl.item.count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count
tag @e[type=item,tag=obl.temp.editing] remove obl.temp.editing
tag @e[distance=..30] remove obl.temp.kill
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air