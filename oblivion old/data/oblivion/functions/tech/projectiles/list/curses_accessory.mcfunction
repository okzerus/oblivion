###   P A R T I C L E S
particle dust 0.7 1 0.7 0.6 ^ ^ ^ 0.1 0.1 0.1 0.01 3
particle dust 0.7 1 0.7 0.6 ^ ^ ^-.30 0.1 0.1 0.1 0.01 3
particle dust 0.7 1 0.7 0.6 ^ ^ ^-.60 0.1 0.1 0.1 0.01 3
particle dust 0.7 1 0.7 0.6 ^ ^ ^-.90 0.1 0.1 0.1 0.01 3
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 0.4 1


###   F U N C T I O N
tag @s add obl.temp.projectile_hit_check

scoreboard players operation #id.temp obl.id = @s obl.id
## HIT
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^.01 as @e[type=marker,tag=obl.temp.projectile_hit_check,limit=1,distance=..1.7] at @s run function oblivion:tech/projectiles/hit/cursed_beam.accessory
## PARRY
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,tag=obl.can_parry.projectile,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^2.31 if entity @e[type=marker,tag=obl.temp.projectile_hit_check,limit=1,distance=..2] run tag @s add obl.temp.parrying
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function oblivion:tech/parrying/projectile/parry

tag @s remove obl.temp.projectile_hit_check