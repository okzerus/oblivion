execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mutton",Count:4b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mutton",Count:4b}}
execute unless entity @a[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:string",Count:6b}}
execute at @p[distance=..5] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:string",Count:6b}}
scoreboard players remove #sheep_count oblivion 1
execute if score #sheep_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/sheep