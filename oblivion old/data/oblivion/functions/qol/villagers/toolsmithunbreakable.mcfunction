###   V I L L A G E R   H O N E S T   R E A C T I O N
execute if entity @a[distance=..7] run function oblivion:rng
execute if entity @a[distance=..7] if score randomizer obl.rng matches 1..33 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"ЭТОТ ПРЕДМЕТ ЛЕГЕНДАРЕН!!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 34..66 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"МОЯ ЛУЧШАЯ РАБОТА!!!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 67..100 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"ИЗУМИТЕЛЬНО, ШИКАРНО!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Откат (3:00)","color":"red"}]',CustomNameVisible:1b}
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
scoreboard players set @s obl.villager.cooldown 3600
tag @s add obl.villager.cooldown

###   U N B R E A K A B L E
tag @e[type=item,predicate=oblivion:items/has.durability,distance=..1,limit=1,sort=nearest] add obl.temp.editing
execute at @e[type=item,tag=obl.temp.editing] run particle block iron_block ~ ~.3 ~ 0 0 0 0 30
execute at @e[type=item,tag=obl.temp.editing] run playsound minecraft:block.anvil.use hostile @a ~ ~ ~ 1 1.5
execute at @e[type=item,tag=obl.temp.editing] run playsound minecraft:ui.toast.challenge_complete hostile @a ~ ~ ~ 1 2
execute as @e[type=item,tag=obl.temp.editing] run data modify entity @s Item.tag.Unbreakable set value 1b
tag @e[type=item,tag=obl.temp.editing] remove obl.temp.editing

###   A D V A N C E M E N T
advancement grant @a[distance=..7] only oblivion:advancements/mobs/overworld/villagers/toolsmithunbreakable

###   C L E A N U P
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=24..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=32..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=40..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=48..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=56..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=64..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.item.emerald_block,scores={obl.item.count=64..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing

execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.5 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 24
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.4 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 32
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.3 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 40
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.2 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 48
execute as @p[distance=..7] if predicate oblivion:effect.hero_of_the_village.1 as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 56
execute as @p[distance=..7] unless predicate oblivion:effect.hero_of_the_village as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 64
execute unless entity @a[distance=..7] as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 64
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest,scores={obl.item_count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item_count
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest] run tag @s remove obl.temp.editing

execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{CustomModelData:9897}}},scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest] run scoreboard players remove @s obl.item.count 1
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest,scores={obl.item_count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item_count
execute as @e[type=item,tag=obl.temp.editing,limit=1,sort=nearest] run tag @s remove obl.temp.editing