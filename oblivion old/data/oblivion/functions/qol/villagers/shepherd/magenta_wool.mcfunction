execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_wool",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_wool",Count:1b}}
scoreboard players remove #magenta_wool_count oblivion 1
execute if score #magenta_wool_count oblivion matches 1.. run function oblivion:qol/villagers/shepherd/magenta_wool