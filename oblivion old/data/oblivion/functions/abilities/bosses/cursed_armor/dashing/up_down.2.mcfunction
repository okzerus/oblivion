execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=obl.facing_point] eyes
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run particle dust 0 1 0 1 ~ ~.5 ~ 0.3 0.9 0.3 0 50 force
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run particle flash ~ ~.5 ~ 0 0 0 0 1 force
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.firework_rocket.large_blast hostile @a ~ ~ ~ 3 0.8
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~ 0 positioned ~ ~-1.6 ~ summon marker run function oblivion:abilities/mobs/dash.as_marker
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run data modify entity @s Motion set from storage oblivion:temp vector

schedule function oblivion:abilities/bosses/cursed_armor/dashing/up_down.3 1t