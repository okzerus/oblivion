execute if entity @s[tag=obl.projectile.parried] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute if entity @s[tag=obl.projectile.parried] run tp @s @e[type=marker,tag=obl.shulker_bullet_teleporter,limit=1,sort=nearest]

tag @s add obl.temp.projectile_hit_check
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.dont_move,tag=!obl.projectile.unparryable] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^1.8 if entity @e[type=#oblivion:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..1.6] run tag @s add obl.temp.parrying
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function oblivion:tech/parrying/projectile/parry
tag @s remove obl.temp.projectile_hit_check