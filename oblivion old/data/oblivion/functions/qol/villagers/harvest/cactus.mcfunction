execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cactus",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cactus",Count:1b}}
scoreboard players remove #cactus_count oblivion 1
execute if score #cactus_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/cactus