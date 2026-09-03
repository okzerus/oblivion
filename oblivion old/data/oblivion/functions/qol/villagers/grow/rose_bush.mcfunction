execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rose_bush",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rose_bush",Count:1b}}
scoreboard players remove #rose_bush_count oblivion 1
execute if score #rose_bush_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/rose_bush