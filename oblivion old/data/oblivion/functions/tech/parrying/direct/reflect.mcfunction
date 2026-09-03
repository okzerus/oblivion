###   S T A R T
tag @s add obl.temp.parried
scoreboard players operation #id.temp.reflect obl.id.reflect = @s obl.id
tag @e[type=#oblivion:all_mobs,sort=nearest,limit=1,predicate=oblivion:matching_score.reflect] add obl.temp.parry_victim


###   O N   V I C T I M
## EFFECTS
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] weakness 1 4 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] slowness 1 4 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] mining_fatigue 1 4 true
effect give @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] blindness 1 4 true
## DAMAGE
function oblivion:tech/parrying/direct/damage
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim,tag=!obl.boss,type=!vex] at @s run tp @s ~ ~ ~ ~ ~-40
## PARTICLES & SOUND
execute at @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] run particle minecraft:end_rod ~ ~.5 ~ 0.3 0.6 0.3 0 20


###   O N   P L A Y E R
## DAMAGE SHIELD
execute if entity @s[gamemode=!creative,predicate=oblivion:items/hold.shield] run function oblivion:tech/parrying/shield_damage.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=oblivion:items/hold.shield.off] run function oblivion:tech/parrying/shield_damage.offhand
tag @s remove obl.temp.mainhand_detected
## EFFECTS
execute unless score @s obl.parry.direct_count matches 4.. run function oblivion:tech/parrying/direct/buff
effect give @s regeneration 1 4 true
## PARTICLES & SOUND
particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 20
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.6 2
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 0.6 1.3
## MISC
scoreboard players set @s obl.parry.cd 30
execute if entity @e[type=player,tag=ob.temp.parry_victim] run scoreboard players set @s obl.parry.cd 40
advancement grant @s only oblivion:advancements/weaponry/shield/parry
advancement grant @s[scores={obl.player_health=1}] only oblivion:advancements/weaponry/shield/additions/half_a_heart
execute if predicate oblivion:items/hold.murasama run scoreboard players add @s obl.murasama.blood 5
execute if predicate oblivion:items/hold.yamato run scoreboard players add @s obl.yamato.style 5
execute if predicate oblivion:items/hold.viking_shield.off unless entity @s[tag=obl.empowered.viking_shield] run function oblivion:items/shield/viking.parry_success
scoreboard players add @s obl.parry.overall_count 1
execute if score @s obl.parry.overall_count matches 100.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.100
execute if score @s obl.parry.overall_count matches 1000.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.1000
execute if score @s obl.parry.overall_count matches 10000.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.10000
## CLEANUP
effect clear @s slowness
effect clear @s blindness
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct
tag @s remove obl.serious_parry
tag @s remove obl.temp.strong_parry
scoreboard players set @s obl.parry.tick 0


###   C L E A N U P
scoreboard players reset @e[type=#oblivion:all_mobs,tag=obl.temp.parry_victim] obl.id.reflect
tag @e[type=#oblivion:all_mobs] remove obl.temp.parry_victim
tag @s remove obl.temp.parried