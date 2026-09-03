scoreboard players operation #id.temp obl.id = @s obl.id
scoreboard players reset #most_recent oblivion
execute as @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] run scoreboard players operation #most_recent oblivion > @s obl.shard_of_time.tick
execute as @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] if score @s obl.shard_of_time.tick = #most_recent oblivion run tag @s add obl.temp.most_recent

playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2
execute at @e[type=marker,tag=obl.temp.most_recent] run particle flash ~ ~.8 ~ 0 0 0 0 1

tp @s @e[type=marker,tag=obl.temp.most_recent,limit=1]
scoreboard players set @s obl.shard_of_time.teleporting 5

execute unless entity @e[type=marker,tag=obl.temp.most_recent] run tag @s remove obl.shard_of_time.teleporting
kill @e[type=marker,tag=obl.temp.most_recent]