data merge block ~ ~ ~ {SpawnData:{entity:{id:"minecraft:zombie",Tags:["obl.temp.spawn_effects","obl.from.dungeon_spawner"]}}}
data merge block ~ ~ ~ {RequiredPlayerRange:24s}
execute if entity @s[tag=obl.spawner.ignore_light] run data merge block ~ ~ ~ {SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0},block_light_limit:{min_inclusive:0}}}}