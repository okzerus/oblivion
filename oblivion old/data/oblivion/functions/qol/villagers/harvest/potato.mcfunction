execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:2b}}
scoreboard players remove #potato_count oblivion 1
execute if score #potato_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/potato