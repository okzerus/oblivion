scoreboard players operation #id.temp obl.id = @s obl.id

execute if score @s obl.shard_of_time.tick matches 1.. run scoreboard players remove @s obl.shard_of_time.tick 1
execute unless entity @p[tag=obl.equipped.accs.shard_of_time,predicate=oblivion:matching_score,distance=..001] unless entity @s[tag=obl.shard_of_time.keep_alive] if score @s obl.shard_of_time.tick matches ..0 run kill @s

execute unless entity @p[tag=obl.equipped.accs.shard_of_time,predicate=oblivion:matching_score] run kill @s
execute if entity @p[tag=obl.equipped.accs.shard_of_time,predicate=oblivion:matching_score,distance=50..] run kill @s

particle dust 0.6 0.6 1 0.7 ~ ~.8 ~ 0.3 0.6 0.3 0 4