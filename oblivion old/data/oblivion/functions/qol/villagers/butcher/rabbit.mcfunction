execute unless entity @a[distance=..5] run loot spawn ~ ~ ~ loot oblivion:mobs/butcher.rabbit
execute as @p[distance=..5] run loot give @s loot oblivion:mobs/butcher.rabbit
scoreboard players remove #rabbit_count oblivion 1
execute if score #rabbit_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/rabbit