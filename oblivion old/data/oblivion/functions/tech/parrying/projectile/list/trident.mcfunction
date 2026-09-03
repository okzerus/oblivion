execute unless entity @s[tag=obl.in_ground] if entity @s[nbt={inGround:1b}] run tag @s add obl.in_ground
execute unless entity @s[tag=obl.dealt_damage] if entity @s[tag=obl.projectile.reflected,nbt={DealtDamage:1b}] run function oblivion:tech/parrying/projectile/list/trident.hit

tag @s add obl.temp.projectile_hit_check
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.dont_move,tag=!obl.projectile.unparryable,tag=!obl.in_ground,nbt=!{DealtDamage:1b}] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile,predicate=!oblivion:matching_score] at @s anchored eyes positioned ^ ^ ^2.5 if entity @e[type=#oblivion:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.3] run tag @s add obl.temp.parrying
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function oblivion:tech/parrying/projectile/parry
tag @s remove obl.temp.projectile_hit_check