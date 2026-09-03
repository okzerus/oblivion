effect give @s minecraft:resistance 1 4 false
scoreboard players set @s obl.shard_of_time.cd 1200
tag @s add obl.shard_of_time.teleporting

scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] add obl.shard_of_time.keep_alive