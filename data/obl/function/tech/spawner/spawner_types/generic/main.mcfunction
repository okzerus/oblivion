scoreboard players operation #id.temp obl.spawner.id = @s obl.spawner.id

execute if score @e[tag=obl.spawner,predicate=obl:matching_score.spawner,limit=1,tag=!obl.spawner.mob_spawned] obl.spawner.difficulty matches 0 run function obl:tech/spawner/spawner_types/generic/mobs/diff0
execute if score @e[tag=obl.spawner,predicate=obl:matching_score.spawner,limit=1,tag=!obl.spawner.mob_spawned] obl.spawner.difficulty matches 1 run function obl:tech/spawner/spawner_types/generic/mobs/diff1

execute if entity @s[tag=obl.spawner.mob_spawned] run kill @s

