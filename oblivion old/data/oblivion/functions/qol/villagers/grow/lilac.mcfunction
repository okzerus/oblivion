execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lilac",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lilac",Count:1b}}
scoreboard players remove #lilac_count oblivion 1
execute if score #lilac_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/lilac