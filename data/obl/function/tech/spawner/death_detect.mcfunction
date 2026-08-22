scoreboard players operation #id.temp obl.spawner.id = @s obl.spawner.id
execute as @e[tag=obl.spawner,predicate=obl:matching_score.spawner] run scoreboard players add @s obl.spawner.death_count 1

###   К О Н Е Ц
execute on passengers run kill @s