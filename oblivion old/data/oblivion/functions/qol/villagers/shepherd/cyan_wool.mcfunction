execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_wool",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_wool",Count:1b}}
scoreboard players remove #cyan_wool_count oblivion 1
execute if score #cyan_wool_count oblivion matches 1.. run function oblivion:qol/villagers/shepherd/cyan_wool