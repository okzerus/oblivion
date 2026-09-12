tag @s add obl.temp.projectile_hit_check
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.freeze,tag=!obl.projectile.unparryable] as @e[type=#obl:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile,predicate=!obl:matching_score] at @s anchored eyes positioned ^ ^ ^2.5 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.3] run tag @s add obl.temp.parrying
execute if entity @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function obl:tech/parrying/projectile/parry
tag @s remove obl.temp.projectile_hit_check