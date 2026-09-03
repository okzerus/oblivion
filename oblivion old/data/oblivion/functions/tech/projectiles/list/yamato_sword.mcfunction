###   P A R T I C L E S
particle electric_spark ^ ^ ^ 0 0 0 0 1
particle dust 0.75 0.75 1 0.4 ^ ^ ^ 0 0 0 0.01 3
particle dust 0.75 0.75 1 0.4 ^ ^ ^-.30 0 0 0 0.01 3
particle dust 0.75 0.75 1 0.4 ^ ^ ^-.60 0 0 0 0.01 3
particle dust 0.75 0.75 1 0.4 ^ ^ ^-.90 0 0 0 0.01 3


###   H I T   G R O U N D
execute unless block ^ ^ ^1.8 #oblivion:non_solid unless entity @s[tag=obl.dont_move] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2 
execute unless block ^ ^ ^1.8 #oblivion:non_solid run tag @s add obl.dont_move


###   F U N C T I O N
tag @s add obl.temp.projectile_hit_check

scoreboard players operation #id.temp obl.id = @s obl.id
## HIT
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^.01 as @e[type=marker,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.1] at @s run function oblivion:tech/projectiles/hit/yamato_sword
## PARRY
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,tag=obl.can_parry.projectile,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^2.31 if entity @e[type=marker,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.2] run tag @s add obl.temp.parrying
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function oblivion:tech/parrying/projectile/parry

tag @s remove obl.temp.projectile_hit_check