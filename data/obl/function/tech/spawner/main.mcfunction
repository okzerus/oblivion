

#execute unless entity @s[tag=obl.spawner.id.set] run data modify storage obl:spawner_id spawner_id set from entity @s UUID
#execute unless entity @s[tag=obl.spawner.id.set] run function obl:tech/spawner/set_spawner_id with storage obl:spawner_id

#scoreboard players set @s obl.spawner.id
#tag @s add obl.spawner.id.set

# Связывает заспавнившийся маркер с ближайшим главным маркером спавнера
execute as @e[tag=obl.spawner.new_spawn,tag=obl.spawner.mob_marker] run function obl:tech/spawner/assign_id

# Функция спавна
execute as @e[tag=obl.spawner.mob_marker] run function obl:tech/spawner/spawner_types/main

# при смерти моба
#execute as @e[tag=obl.spawner.mob,nbt={DeathTime:1s}] if entity @s run function obl:tech/spawner/death_search

execute if score @s obl.spawner.difficulty matches 0 if score @s obl.spawner.death_count matches 5.. run scoreboard players set @s obl.spawner.difficulty 1

# Исправление позиции
#execute as @e[tag=obl.spawner.mob_marker] unless block ~ ~ ~ #air run function obl:tech/spawner/position_fix

###   P A R T I C L E S
execute align xyz run particle minecraft:soul_fire_flame ~.5 ~.5 ~.5 0.3 0.3 0.3 0 1 normal

###   D E S T R O Y
execute unless block ~ ~ ~ spawner run function obl:tech/spawner/destroy