###   V I L L A G E R   H O N E S T   R E A C T I O N
execute if entity @a[distance=..7] run function oblivion:rng
execute if entity @a[distance=..7] if score randomizer obl.rng matches 1..33 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Хорошо, без проблем.","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 34..66 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Я займусь этим.","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 67..100 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Всё, готово.","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Откат (5:00)","color":"red"}]',CustomNameVisible:1b}
execute if block ~ ~ ~ air run setblock ~ ~ ~ structure_void
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
scoreboard players set @s obl.villager.cooldown 6000
tag @s add obl.villager.cooldown

###   G R O W
tag @s add obl.temp.growing
summon marker ~-15 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-14 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-13 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-12 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-11 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-10 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-9 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-8 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-7 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-6 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-5 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-4 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-3 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-2 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~-1 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~ ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~1 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~2 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~3 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~4 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~5 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~6 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~7 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~8 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~9 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~10 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~11 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~12 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~13 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~14 ~-15 ~-15 {Tags:[obl.temp.grow]}
summon marker ~15 ~-15 ~-15 {Tags:[obl.temp.grow]}
schedule function oblivion:qol/villagers/grow.clean_tag 35t

tag @e[type=cow,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=sheep,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=chicken,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=pig,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=rabbit,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=horse,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=mule,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=donkey,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=llama,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=camel,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=mooshroom,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=sniffer,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=goat,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
tag @e[type=bee,distance=..30,scores={obl.animal_age=..-1}] add obl.temp.modify
execute as @e[distance=..30,tag=obl.temp.modify] run data merge entity @s {Age:0}
execute at @e[distance=..30,tag=obl.temp.modify] run particle happy_villager ~ ~2 ~ 0.3 0.3 0.3 0 10

###   A D V A N C E M E N T
advancement grant @a[distance=..5] only oblivion:advancements/mobs/overworld/villagers/farmer

###   C L E A N U P
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=2..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=3..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=3..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing

execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 2
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 3
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 3

execute as @e[type=item,tag=obl.temp.editing,scores={obl.item.count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count
tag @e[type=item,tag=obl.temp.editing] remove obl.temp.editing
tag @e[distance=..30] remove obl.temp.modify
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air