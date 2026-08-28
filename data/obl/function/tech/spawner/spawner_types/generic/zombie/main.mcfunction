scoreboard players operation #id.temp obl.spawner.id = @s obl.spawner.id

# Связывает заспавнившийся маркер с ближайшим главным маркером спавнера
execute unless entity @s[tag=obl.spawner.mob_spawned] run function obl:tech/spawner/spawner_types/generic/zombie/assign_id

# Повышение сложности спавнера
execute if score @s obl.spawner.difficulty matches 0 if score @s obl.spawner.death_count matches 5.. run function obl:tech/spawner/spawner_types/generic/zombie/promote/promote_to_diff1
execute if score @s obl.spawner.difficulty matches 1 if score @s obl.spawner.death_count matches 10.. run function obl:tech/spawner/spawner_types/generic/zombie/promote/promote_to_diff2
execute if score @s obl.spawner.difficulty matches 2 if score @s obl.spawner.death_count matches 15.. run function obl:tech/spawner/spawner_types/generic/zombie/promote/promote_to_diff3
execute if score @s obl.spawner.difficulty matches 3 if score @s obl.spawner.death_count matches 20.. run function obl:tech/spawner/spawner_types/generic/zombie/promote/self_destruct

# Спавн мобов разных сложностей
execute if score @s obl.spawner.difficulty matches 0 as @e[type=armor_stand,predicate=obl:matching_score.spawner,tag=obl.spawner.generic.mob_marker] run function obl:tech/spawner/spawner_types/generic/zombie/mobs/diff0
execute if score @s obl.spawner.difficulty matches 1 as @e[type=armor_stand,predicate=obl:matching_score.spawner,tag=obl.spawner.generic.mob_marker] run function obl:tech/spawner/spawner_types/generic/zombie/mobs/diff1
execute if score @s obl.spawner.difficulty matches 2 as @e[type=armor_stand,predicate=obl:matching_score.spawner,tag=obl.spawner.generic.mob_marker] run function obl:tech/spawner/spawner_types/generic/zombie/mobs/diff2
execute if score @s obl.spawner.difficulty matches 3 as @e[type=armor_stand,predicate=obl:matching_score.spawner,tag=obl.spawner.generic.mob_marker] run function obl:tech/spawner/spawner_types/generic/zombie/mobs/diff3
