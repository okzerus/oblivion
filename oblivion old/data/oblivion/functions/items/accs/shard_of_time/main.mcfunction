execute if score @s obl.shard_of_time.tick matches 1.. run scoreboard players remove @s obl.shard_of_time.tick 1

scoreboard players operation #id.temp obl.id = @s obl.id
execute at @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] run scoreboard players add #shard_of_time.copy_count oblivion 1

execute unless entity @s[tag=obl.mid_air] unless entity @s[tag=obl.shard_of_time.teleporting] unless score @s obl.shard_of_time.tick matches 1.. unless score #shard_of_time.copy_count oblivion matches 5.. unless entity @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score,distance=..5] run function oblivion:items/accs/shard_of_time/create_copy

scoreboard players reset #shard_of_time.copy_count
execute unless entity @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] run tag @s remove obl.shard_of_time.teleporting