execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:4b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:4b}}
scoreboard players remove #melon_count oblivion 1
execute if score #melon_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/melon