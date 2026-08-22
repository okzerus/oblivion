# copy the id from the nearest main marker to this new marker
execute at @s run scoreboard players operation @s obl.spawner.id = @e[tag=obl.spawner,limit=1,sort=nearest] obl.spawner.id

# clean up the temp tag so it's only processed once
tag @s remove obl.spawner.new_spawn