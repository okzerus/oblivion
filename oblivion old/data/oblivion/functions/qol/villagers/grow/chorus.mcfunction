execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_flower",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_flower",Count:1b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_fruit",Count:7b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_fruit",Count:7b}}
scoreboard players remove #chorus_count oblivion 1
execute if score #chorus_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/chorus