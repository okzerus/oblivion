execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glow_berries",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glow_berries",Count:1b}}
scoreboard players remove #glow_berry_count oblivion 1
execute if score #glow_berry_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/glow_berry