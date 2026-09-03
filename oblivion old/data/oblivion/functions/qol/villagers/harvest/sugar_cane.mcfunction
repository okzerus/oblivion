execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sugar_cane",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sugar_cane",Count:1b}}
scoreboard players remove #sugar_cane_count oblivion 1
execute if score #sugar_cane_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/sugar_cane