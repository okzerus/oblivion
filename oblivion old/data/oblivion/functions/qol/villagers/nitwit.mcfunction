###   V I L L A G E R   H O N E S T   R E A C T I O N
execute if entity @a[distance=..7] run function oblivion:rng
execute if entity @a[distance=..7] if score randomizer obl.rng matches 1..33 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"нашёл это у себя под подушкой..","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 34..66 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"хз, что это делает, наверное круто!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] if score randomizer obl.rng matches 67..100 run summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"забрал у ребёнка, для тебя!","color":"green"}]',CustomNameVisible:1b}
execute if entity @a[distance=..7] run summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Откат (5:00)","color":"red"}]',CustomNameVisible:1b}
execute if block ~ ~ ~ air run setblock ~ ~ ~ structure_void
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
scoreboard players set @s obl.villager.cooldown 9000
tag @s add obl.villager.cooldown

###   D R O P   L O O T
execute unless entity @a[distance=..7] run loot spawn ~ ~ ~ loot oblivion:mobs/villager_nitwit
execute as @p[distance=..7] run loot give @s loot oblivion:mobs/villager_nitwit

###   A D V A N C E M E N T
advancement grant @a[distance=..7] only oblivion:advancements/mobs/overworld/villagers/nitwit

###   C L E A N U P
execute as @e[type=item,tag=obl.item.emerald,scores={obl.item.count=1..},distance=..1,limit=1,sort=nearest] run tag @s add obl.temp.editing
execute as @e[type=item,tag=obl.temp.editing] run scoreboard players remove @s obl.item.count 1
execute as @e[type=item,tag=obl.temp.editing,scores={obl.item.count=..0}] run kill @s
execute as @e[type=item,tag=obl.temp.editing] store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count
tag @e[type=item,tag=obl.temp.editing] remove obl.temp.editing
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air