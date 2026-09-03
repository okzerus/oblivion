execute unless entity @a[distance=..5] run loot spawn ~ ~ ~ loot oblivion:mobs/mooshroom.mooshroom
execute as @p[distance=..5] run loot give @s loot oblivion:mobs/mooshroom.mooshroom
scoreboard players remove #mooshroom_count oblivion 1
execute if score #mooshroom_count oblivion matches 1.. run function oblivion:qol/villagers/butcher/mooshroom