scoreboard players operation #id.temp obl.id = @s obl.id
execute unless entity @e[type=marker,tag=obl.ego_anchor,predicate=obl:matching_score] run function obl:tech/player/ego/tp/create_marker
execute at @n[type=marker,tag=obl.ego_anchor,predicate=obl:matching_score] if entity @s[distance=.001..] run tp @s 0 42 ~

particle minecraft:wax_off ~ ~ ~ 10 10 10 1 2 force