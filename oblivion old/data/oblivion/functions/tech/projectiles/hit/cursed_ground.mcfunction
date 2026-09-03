###   A O E
scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] add obl.temp.original_target
tag @e[type=#oblivion:all_mobs,distance=..3,predicate=!oblivion:matching_score,tag=!obl.invulnerable] add obl.temp.damaged_area

###   S O U N D   +   P A R T I C L E S
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 0.1
particle dust 0 1 0 0.7 ~ ~.2 ~ 1 1 1 0.01 20
particle dust 0 1 0 1 ~ ~.2 ~ 0.2 0.2 0.2 0.01 10
particle block dirt ~ ~.2 ~ 1 1 1 0.01 40
particle minecraft:explosion_emitter ~ ~.2 ~ 0 0 0 0 1

###   D A M A G E
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] run damage @s 8 explosion by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
## EFFECTS
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] blindness 1 0 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] slowness 3 1
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] weakness 3 1
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] mining_fatigue 3 1
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] at @s run function oblivion:abilities/mobs/knockup

###   C L E A N U P
tag @e[type=#oblivion:all_mobs] remove obl.temp.damaged_area
tag @e[type=#oblivion:all_mobs] remove obl.temp.original_target
kill @s