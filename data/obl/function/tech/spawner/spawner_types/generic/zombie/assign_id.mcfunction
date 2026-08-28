# copy the id from the nearest main marker to this new marker

# clean up the temp tag so it's only processed once

scoreboard players operation #id.temp obl.spawner.id = @s obl.spawner.id

scoreboard players operation @e[type=armor_stand,distance=..32] obl.spawner.id = @s obl.spawner.id
execute as @e[type=armor_stand,tag=obl.spawner.new_spawn,predicate=obl:matching_score.spawner] run tag @s remove obl.spawner.new_spawn