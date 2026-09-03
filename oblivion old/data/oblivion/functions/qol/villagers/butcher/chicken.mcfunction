execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chicken",Count:3b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chicken",Count:3b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:feather",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:feather",Count:2b}}
scoreboard players remove #chicken_count oblivion 1
execute if score #chicken_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/chicken