execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beef",Count:4b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beef",Count:4b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:2b}}
scoreboard players remove #pig_count oblivion 1
execute if score #pig_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/pig