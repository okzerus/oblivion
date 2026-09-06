###   S T A R T
scoreboard players operation #id.temp.reflect obl.id.reflect = @s obl.id
tag @e[type=#obl:all_mobs,sort=nearest,limit=1,predicate=obl:matching_score.reflect] add obl.temp.parry_victim

###   O N   O W N E R
## DAMAGE SHIELD
execute if entity @s[gamemode=!creative,predicate=obl:items/hold.shield] run function obl:tech/parrying/shield_damage.fail.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=obl:items/hold.shield.off] run function obl:tech/parrying/shield_damage.fail.offhand
tag @s remove obl.temp.mainhand_detected
## PARRY CD
scoreboard players set @s obl.parry.cd 80
execute if entity @e[type=player,tag=obl.temp.parry_victim] run scoreboard players set @s obl.parry.cd 200
## EFFECTS
effect clear @s blindness
effect clear @s slowness
effect give @s blindness 1 0 true
## PARTICLES & SOUND
particle minecraft:dust 0.6 0 0 0.8 ~ ~.5 ~ 0.3 0.6 0.3 0 50
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 0.8
## CLEANUP
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct
scoreboard players set @s obl.parry.tick 0


###   C L E A N U P

scoreboard players reset @e[type=#obl:all_mobs,tag=obl.temp.parry_victim] obl.id.reflect
tag @e[type=#obl:all_mobs] remove obl.temp.parry_victim






#advancement grant @p[tag=obl.serious_parry] only obl:advancements/secret/serious_parry
#execute if entity @s[tag=obl.temp.strong_parry] as @e[tag=obl.parry_victim,limit=1,sort=nearest,tag=obl.boss] at @s run scoreboard players remove @s obl.fake_health 15
#execute if entity @s[tag=obl.temp.strong_parry] as @e[tag=obl.parry_victim,limit=1,sort=nearest,tag=obl.boss,tag=obl.can_be_enraged,tag=!obl.enraged] at @s run function obl:tech/mob_rage_enabled
#execute if entity @s[tag=obl.temp.strong_parry] as @e[tag=obl.parry_victim,limit=1,sort=nearest,tag=obl.boss,tag=obl.can_be_stunned,tag=!obl.stunned] at @s run function obl:tech/stun_enabled
#execute if entity @s[tag=obl.temp.strong_parry] as @e[tag=obl.parry_victim,limit=1,sort=nearest,tag=obl.boss,tag=obl.temp.break_armor,tag=!obl.brokenarmor] at @s run function obl:tech/armorbreaking/add
#execute if entity @s[tag=obl.temp.strong_parry] as @e[tag=obl.parry_victim,limit=1,sort=nearest,tag=obl.boss,tag=obl.temp.break_armor] at @s run function obl:tech/armorbreaking/add
