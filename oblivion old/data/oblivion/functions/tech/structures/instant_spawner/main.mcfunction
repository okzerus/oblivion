###   S P A W N
execute unless score #pause_spawners oblivion matches 1 run function oblivion:tech/structures/instant_spawner/spawn

###   P A R T I C L E S
execute if score #pause_spawners oblivion matches 1 run particle minecraft:happy_villager ~ ~.2 ~ 0 0 0 0 1