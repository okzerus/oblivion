execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_beef",Count:4b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_beef",Count:4b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:2b}}
scoreboard players remove #pig_count_fire oblivion 1
execute if score #pig_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/pig_fire