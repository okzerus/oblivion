execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_seeds",Count:2b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot",Count:1b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_seeds",Count:2b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot",Count:1b}}
scoreboard players remove #beetroot_count oblivion 1
execute if score #beetroot_count oblivion matches 1.. run function oblivion:qol/villagers/harvest/beetroot