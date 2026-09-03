scoreboard players set #no_removal oblivion 1
execute as @e[type=marker,tag=obl.instant_spawner,distance=..30] at @s run function oblivion:tech/structures/instant_spawner/spawn
scoreboard players set #no_removal oblivion 0