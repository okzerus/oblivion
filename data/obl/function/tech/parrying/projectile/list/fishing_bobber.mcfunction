execute unless entity @s[tag=obl.on_ground] if predicate obl:on.ground run tag @s add obl.on_ground
execute if entity @s[tag=obl.on_ground] unless predicate obl:on.ground run tag @s remove obl.on_ground

execute if entity @s[tag=obl.dont_move] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

tag @s add obl.temp.projectile_hit_check
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.dont_move,tag=!obl.projectile.unparryable,tag=!obl.on_ground,tag=!obl.projectile.reflected] as @e[type=#obl:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile] at @s anchored eyes positioned ^ ^ ^2.5 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.3] run tag @s add obl.temp.parrying
execute if entity @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function obl:tech/parrying/projectile/parry
tag @s remove obl.temp.projectile_hit_check