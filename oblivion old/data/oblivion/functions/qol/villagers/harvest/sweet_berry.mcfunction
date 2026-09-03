execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sweet_berries",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sweet_berries",Count:1b}}
scoreboard players remove #berry_count oblivion 1
execute if score #berry_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/sweet_berry