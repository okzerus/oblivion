###   A O E
scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] add obl.temp.original_target
tag @e[type=#oblivion:all_mobs,distance=..2,predicate=!oblivion:matching_score,tag=!obl.invulnerable] add obl.temp.damaged_area
tag @e[type=#oblivion:all_mobs,tag=obl.temp.original_target] add obl.temp.damaged_area

###   S O U N D   +   P A R T I C L E S
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 0.1
particle dust 0.7 1 0.7 0.5 ~ ~ ~ 1 1 1 0.01 20
particle dust 0.7 1 0.7 0.6 ~ ~ ~ 0.2 0.2 0.2 0.01 10
execute if entity @s[tag=obl.projectile.reflected] run particle minecraft:firework ~ ~ ~ 0 0 0 0.2 20
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] at @s anchored eyes run particle dust 0.7 1 0.7 0.7 ^ ^ ^.1 0.2 0.2 0.2 0.01 10

###   D A M A G E
execute unless entity @s[tag=obl.projectile.reflected] as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] run damage @s 6 oblivion:projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
execute if entity @s[tag=obl.projectile.reflected] as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] run damage @s 10 oblivion:parried_projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
## CURSE
execute if predicate oblivion:chance/5 as @e[type=#oblivion:all_mobs,tag=obl.temp.original_target] at @s anchored eyes run function oblivion:tech/curse_enabled
execute if entity @s[tag=obl.projectile.reflected] if predicate oblivion:chance/10 as @e[type=#oblivion:all_mobs,tag=obl.temp.original_target] at @s anchored eyes run function oblivion:tech/curse_enabled
## RAGE
execute if entity @s[tag=obl.projectile.reflected] as @e[type=#oblivion:all_mobs,tag=obl.temp.original_target,tag=obl.can_be_enraged,tag=!obl.enraged] at @s anchored eyes run function oblivion:tech/mob_rage_enabled
## STUN
execute if entity @s[tag=obl.projectile.reflected] if predicate oblivion:chance/30 as @e[type=#oblivion:all_mobs,tag=obl.temp.original_target,tag=obl.can_be_stunned,tag=!obl.stunned,type=!#oblivion:cant_be_stunned] at @s anchored eyes run function oblivion:tech/stun_enabled
## EFFECTS
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] blindness 1 0 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] slowness 3 0
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] weakness 3 0
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] mining_fatigue 3 0
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] poison 3 0

###   C L E A N U P
tag @e[type=#oblivion:all_mobs] remove obl.temp.damaged_area
tag @e[type=#oblivion:all_mobs] remove obl.temp.original_target
kill @s