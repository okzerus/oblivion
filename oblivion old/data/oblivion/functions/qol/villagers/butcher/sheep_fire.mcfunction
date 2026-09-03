execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_mutton",Count:4b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_mutton",Count:4b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:charcoal",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:charcoal",Count:1b}}
scoreboard players remove #sheep_count_fire oblivion 1
execute if score #sheep_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/sheep_fire