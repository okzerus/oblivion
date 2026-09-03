execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot",Count:2b}}
scoreboard players remove #carrot_count oblivion 1
execute if score #carrot_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/carrot