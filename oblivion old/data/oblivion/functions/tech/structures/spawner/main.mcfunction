###   I N S E R T   /   R E M O V E
execute unless score #pause_spawners oblivion matches 1 unless entity @s[tag=obl.has_mob] run function oblivion:tech/structures/spawner/insert_mob/main
execute if score #pause_spawners oblivion matches 1 if entity @s[tag=obl.has_mob] run function oblivion:tech/structures/spawner/insert_mob/pause

###   P A R T I C L E S
execute align xyz run particle minecraft:soul_fire_flame ~.5 ~.5 ~.5 0.3 0.3 0.3 0 1 normal

###   D E S T R O Y
execute unless block ~ ~ ~ spawner run function oblivion:tech/structures/spawner/destroy

###   M O B   S P A W N   E F F E C T S
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.from_dungeon,distance=..10] at @s run function oblivion:tech/structures/spawner/effects

###   L I V I N G   T I C K
execute unless entity @s[tag=obl.spawner.infinite_life] unless score #pause_spawners oblivion matches 1 run scoreboard players add @s obl.spawner.live_tick 1
execute unless entity @s[tag=obl.spawner.infinite_life] unless score #pause_spawners oblivion matches 1 if score @s obl.spawner.live_tick matches 12000 align xyz positioned ~.5 ~.5 ~.5 run function oblivion:tech/dungeons/spawner.destroy