###   D U N G E O N   I N I T
execute unless score #pause_spawners oblivion matches 1 unless entity @s[tag=obl.init] run function oblivion:tech/structures/dungeon_core/init
scoreboard players operation #id.temp obl.id = @s obl.id

###   S P A W N E R   L I N K I N G
tag @s add obl.temp.link
execute unless score #pause_spawners oblivion matches 1 as @e[tag=obl.spawner,tag=!obl.spawner.linked,tag=!obl.spawner.player_owner,tag=!obl.lone_spawner,distance=..50] run function oblivion:tech/structures/dungeon_core/link_spawner
tag @s remove obl.temp.link

###   P A R T I C L E S
execute align xyz run particle minecraft:enchant ~.5 ~.8 ~.5 0 0 0 1 1 normal
execute facing entity @e[type=marker,tag=obl.spawner,tag=obl.spawner.linked,predicate=oblivion:matching_score] eyes run particle minecraft:soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.0000001 0

###   N O   L I N K E D   S P A W N E R S
execute unless score #pause_spawners oblivion matches 1 unless entity @e[type=marker,tag=obl.spawner,tag=obl.spawner.linked,distance=..50,predicate=oblivion:matching_score] run function oblivion:tech/structures/dungeon_core/check_for_reward

###   D E S T R O Y
execute unless block ~ ~ ~ reinforced_deepslate run function oblivion:tech/structures/dungeon_core/destroy