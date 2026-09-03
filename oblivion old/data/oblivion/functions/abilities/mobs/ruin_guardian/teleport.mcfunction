scoreboard players operation #id.temp obl.id = @s obl.id

playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 0.7
playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 1 0.6
particle minecraft:flash
particle minecraft:bubble ~ ~ ~ 1 1 1 0 50

tp @s @e[type=marker,tag=obl.ocean_ruin.center,predicate=oblivion:matching_score,limit=1]

execute at @e[type=marker,tag=obl.ocean_ruin.center,predicate=oblivion:matching_score,limit=1] run playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 0.7
execute at @e[type=marker,tag=obl.ocean_ruin.center,predicate=oblivion:matching_score,limit=1] run playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 1 0.6
execute at @e[type=marker,tag=obl.ocean_ruin.center,predicate=oblivion:matching_score,limit=1] run particle minecraft:flash
execute at @e[type=marker,tag=obl.ocean_ruin.center,predicate=oblivion:matching_score,limit=1] run particle minecraft:bubble ~ ~ ~ 1 1 1 0 50