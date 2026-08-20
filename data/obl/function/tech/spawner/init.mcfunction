scoreboard players add #spawner_id.holder obl.spawner.id 1
scoreboard players operation @s obl.spawner.id = #spawner_id.holder obl.spawner.id

execute if entity @s[tag=obl.spawner.generic] run data merge block ~ ~ ~ {SpawnData:{entity:{id:marker,Tags:[obl.spawner.mob_marker,obl.spawner.generic.mob_marker,obl.spawner.new_spawn]}}, SpawnRange:3}

tag @s remove obl.spawner.init