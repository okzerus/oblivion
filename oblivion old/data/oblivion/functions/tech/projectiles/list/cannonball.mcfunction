###   P A R T I C L E S
particle minecraft:smoke ^ ^ ^ 0 0 0 0.05 2 force
execute if entity @s[tag=obl.cannonball.flaming] run particle minecraft:flame ^ ^ ^ 0 0 0 0.02 3 force


###   H I T   G R O U N D
execute unless block ~ ~ ~ #oblivion:non_solid unless predicate oblivion:in_water unless entity @s[tag=obl.dont_move] run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/hit
execute if predicate oblivion:in_water unless entity @s[tag=obl.dont_move] run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/hit.water


###   F U N C T I O N
tag @s add obl.temp.projectile_hit_check

scoreboard players operation #id.temp obl.id = @s obl.id
## HIT
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^.01 as @e[type=block_display,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.1] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/hit
## PARRY
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,tag=obl.can_parry.projectile,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^2.31 if entity @e[type=block_display,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.2] run tag @s add obl.temp.parrying
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function oblivion:tech/parrying/projectile/parry

tag @s remove obl.temp.projectile_hit_check