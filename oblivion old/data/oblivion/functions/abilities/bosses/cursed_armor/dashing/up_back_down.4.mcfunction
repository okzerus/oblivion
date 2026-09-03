execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run tag @s add obl.check_for_ground
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run tag @s remove obl.performing_dash
tag @a remove obl.facing_point