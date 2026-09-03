execute unless block ~.7 ~ ~ #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute unless block ~-.7 ~ ~ #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~.7 ~ #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~-.7 ~ #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~.7 #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~-.7 #oblivion:non_solid if block ~ ~ ~ #oblivion:non_solid run tag @s add obl.temp.found_surface
execute if entity @s[tag=obl.temp.found_surface] run function oblivion:tech/parrying/projectile/list/bucket/place
tag @s remove obl.temp.found_surface