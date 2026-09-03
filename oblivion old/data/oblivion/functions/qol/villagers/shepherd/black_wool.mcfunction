execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_wool",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_wool",Count:1b}}
scoreboard players remove #black_wool_count oblivion 1
execute if score #black_wool_count oblivion matches 1.. run function oblivion:qol/villagers/shepherd/black_wool