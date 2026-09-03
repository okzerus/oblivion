###   V I L L A G E R   H O N E S T   R E A C T I O N
execute if entity @a[distance=..7] run function oblivion:rng
execute if entity @a[distance=..7] if score randomizer obl.rng matches 1..33 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"О да, ты просто ТАНК!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 34..66 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Это, конечно, не наномашины..","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 67..100 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Это тебе поможет в бою!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Откат (15:00)","color":"red"}]',CustomNameVisible:1b}
execute if block ~ ~ ~ air run setblock ~ ~ ~ structure_void
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
scoreboard players set @s obl.villager.cooldown 18000
tag @s add obl.villager.cooldown

###   E F F E C T
execute as @p[distance=..7] unless entity @s[tag=obl.empowered.armorer] run scoreboard players add @s obl.stackable.resistance 50
scoreboard players set @p[distance=..7] obl.cd.villager_emp.armorer 12000
tag @p[distance=..7] add obl.empowered.armorer

execute at @p[distance=..7] run playsound minecraft:entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1.6
execute at @p[distance=..7] run playsound minecraft:entity.villager.work_weaponsmith hostile @a ~ ~ ~ 1 1.6
execute at @p[distance=..7] run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.6 0.3 0 30

###   A D V A N C E M E N T
advancement grant @a[distance=..7] only oblivion:advancements/mobs/overworld/villagers/armorer

###   C L E A N U P
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=2..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=4..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=6..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=8..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=8..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing

execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 2
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 4
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 6
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 8
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 8

execute as @e[type=item,tag=obl.temp.editing,scores={obl.item.count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count
tag @e[type=item,tag=obl.temp.editing] remove obl.temp.editing
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air