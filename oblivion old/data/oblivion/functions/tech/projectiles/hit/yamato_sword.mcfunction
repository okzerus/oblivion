###   A O E
scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score] add obl.temp.damaged_area

###   S O U N D   +   P A R T I C L E S
playsound minecraft:item.trident.hit hostile @a ~ ~ ~ 0.6 2
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
particle dust 0.5 0.5 1 1 ~ ~1 ~ 1 1 1 0.01 30
particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 40
execute if entity @s[tag=obl.projectile.reflected] run particle minecraft:firework ~ ~ ~ 0 0 0 0.2 20

###   D A M A G E
execute unless entity @s[tag=obl.projectile.reflected] as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] run damage @s 12 oblivion:projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
execute if entity @s[tag=obl.projectile.reflected] as @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] run damage @s 20 oblivion:parried_projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
## EFFECTS
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] blindness 1 0 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] slowness 10 0
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] weakness 10 1
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.damaged_area] mining_fatigue 10 2

###   C L E A N U P
tag @e[type=#oblivion:all_mobs] remove obl.temp.damaged_area
kill @s