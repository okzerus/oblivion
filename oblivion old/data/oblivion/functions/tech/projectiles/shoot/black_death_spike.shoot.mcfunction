execute anchored eyes run summon minecraft:marker ^ ^ ^0.01 {Tags:["obl.instant_beam","obl.beam.black_death_spike"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=obl.instant_beam,tag=!obl.modified] Rotation set from entity @s Rotation
execute as @e[type=marker,limit=1,sort=nearest,tag=obl.instant_beam,tag=!obl.modified] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/black_death_spike
tag @e[type=marker,limit=1,sort=nearest,tag=obl.instant_beam,tag=!obl.modified] add obl.modified