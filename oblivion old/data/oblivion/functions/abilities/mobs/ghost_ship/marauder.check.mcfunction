execute as @p[tag=obl.temp.target] at @s anchored eyes run summon marker ^ ^ ^.0001 {Tags:[obl.sight.end_point]}
execute anchored eyes positioned ^ ^ ^0.0001 facing entity @e[type=marker,tag=obl.sight.end_point] eyes run function oblivion:tech/raycast/check_for_sight

execute if entity @s[tag=obl.temp.clear_sight] run function oblivion:abilities/mobs/ghost_ship/marauder.throw
scoreboard players set @s obl.mob.ability_cd 100

tag @s remove obl.temp.clear_sight
kill @e[type=marker,tag=obl.sight.end_point]