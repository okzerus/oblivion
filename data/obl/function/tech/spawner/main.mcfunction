###   I N S E R T   /   R E M O V E
#execute unless score #pause_spawners oblivion matches 1 unless entity @s[tag=obl.has_mob] run function oblivion:tech/structures/spawner/insert_mob/main
#execute if score #pause_spawners oblivion matches 1 if entity @s[tag=obl.has_mob] run function oblivion:tech/structures/spawner/insert_mob/pause

execute unless entity @s[tag=obl.spawner.id.set] run data modify storage obl:spawner_id spawner_id set from entity @s UUID
execute unless entity @s[tag=obl.spawner.id.set] run function obl:tech/spawner/set_spawner_id with storage obl:spawner_id

#scoreboard players set @s obl.spawner.id
#tag @s add obl.spawner.id.set

execute as @e[type=marker,tag=obl.spawner.new_spawn,tag=obl.spawner.generic.mob_marker] run function obl:tech/spawner/assign_id

###   P A R T I C L E S
execute align xyz run particle minecraft:soul_fire_flame ~.5 ~.5 ~.5 0.3 0.3 0.3 0 1 normal

###   D E S T R O Y
execute unless block ~ ~ ~ spawner run function obl:tech/spawner/destroy