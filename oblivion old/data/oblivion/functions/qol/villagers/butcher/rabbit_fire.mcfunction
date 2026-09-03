execute unless entity @a[distance=..5] run loot spawn ~ ~ ~ loot oblivion:mobs/butcher.rabbit_fire
execute as @p[distance=..5] run loot give @s loot oblivion:mobs/butcher.rabbit_fire
scoreboard players remove #rabbit_count_fire oblivion 1
execute if score #rabbit_count_fire oblivion matches 1.. run function oblivion:qol/villagers/butcher/rabbit_fire