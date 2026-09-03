data merge entity @s {NoAI:1b}
tag @s add obl.on_ground
execute positioned ~ ~.9 ~ run function oblivion:tech/player/materializing/strike
execute as @a[distance=..30] at @s run function oblivion:lines/the_guide/first_encounter/3
execute as @a[distance=15..30] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=villager,tag=obl.the_guide,sort=nearest,limit=1]