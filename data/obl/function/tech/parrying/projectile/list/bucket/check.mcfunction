execute unless block ~.7 ~ ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~-.7 ~ ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~.7 ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~-.7 ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~.7 #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~-.7 #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute if entity @s[tag=obl.temp.found_surface] run function obl:tech/parrying/projectile/list/bucket/place
tag @s remove obl.temp.found_surface