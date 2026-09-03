execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_wool",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_wool",Count:1b}}
scoreboard players remove #yellow_wool_count oblivion 1
execute if score #yellow_wool_count oblivion matches 1.. run function oblivion:qol/villagers/shepherd/yellow_wool