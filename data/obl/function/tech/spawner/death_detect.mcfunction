scoreboard players operation #id.temp obl.spawner.id = @s obl.spawner.id
# При смерти моба повышает счётчик смертей для связанного спавнера
execute as @e[type=marker,predicate=obl:matching_score.spawner,tag=obl.spawner] run scoreboard players add @s obl.spawner.death_count 1

###   К О Н Е Ц
execute on passengers if entity @s[type=marker] run kill @s
execute on passengers if entity @s[type=!marker] run tag @s add obl.spawner.passenger_mob.lost_vehicle