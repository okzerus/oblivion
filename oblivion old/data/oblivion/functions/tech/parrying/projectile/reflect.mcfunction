###   R E P L A C E   I D
tag @s add obl.temp.reflecting
scoreboard players operation #id.temp.reflect obl.id.reflect = @s obl.id
execute as @e[type=#oblivion:parryable,predicate=oblivion:matching_score.reflect] run tag @s add obl.temp.reflected
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run scoreboard players operation @s obl.id = @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting] obl.id
execute unless entity @e[type=#oblivion:parryable,tag=obl.temp.reflected] run tag @s add obl.temp.no_reflected

###   O N   P R O J E C T I L E
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] add obl.projectile.reflected
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=obl.boss.black_death] add obl.black_death.parried
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run data modify entity @s Rotation set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1] Rotation
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run data merge entity @s {NoGravity:0b}
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=obl.parryable_mob] run data merge entity @s {NoAI:0b}
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.dont_move
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.black_death.dont_move
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.projectile.parried
scoreboard players reset @e[type=#oblivion:parryable,tag=obl.temp.reflected] obl.id.reflect
tag @e[type=marker,tag=obl.temp.reflected] remove obl.projectile.speed.1
tag @e[type=marker,tag=obl.temp.reflected] remove obl.projectile.speed.2
tag @e[type=marker,tag=obl.temp.reflected] add obl.projectile.speed.3
scoreboard players set @e[type=marker,tag=obl.temp.reflected] obl.projectile_progress 0
## SOUND & PARTICLES
execute at @e[type=#oblivion:parryable,tag=obl.temp.reflected] run particle minecraft:firework ~ ~ ~ 0 0 0 0.3 20
execute at @e[type=#oblivion:parryable,tag=obl.temp.reflected] run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
execute at @e[type=#oblivion:parryable,tag=obl.temp.reflected] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 2
execute at @e[type=#oblivion:parryable,tag=obl.temp.reflected] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 0.7
execute if entity @s[tag=obl.temp.no_reflected] anchored eyes run playsound minecraft:block.respawn_anchor.deplete hostile @a ^ ^ ^3 1 2
execute if entity @s[tag=obl.temp.no_reflected] anchored eyes run playsound minecraft:entity.firework_rocket.launch hostile @a ^ ^ ^3 1 2
execute if entity @s[tag=obl.temp.no_reflected] anchored eyes run playsound minecraft:item.shield.block hostile @a ^ ^ ^3 1 0.7


###   O N   O W N E R
## PARRY CD
scoreboard players set @s obl.parry.cd 15
execute if entity @e[type=#oblivion:parryable,tag=obl.projectile.player_owner] run scoreboard players set @s obl.parry.cd 20
## DAMAGE SHIELD
execute if entity @s[gamemode=!creative,predicate=oblivion:items/hold.shield] run function oblivion:tech/parrying/shield_damage.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=oblivion:items/hold.shield.off] run function oblivion:tech/parrying/shield_damage.offhand
tag @s remove obl.temp.mainhand_detected
## EFFECTS
execute at @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=!obl.temp.same_owner,type=!magma_cube] unless score @s obl.parry.projectile_count matches 4.. run function oblivion:tech/parrying/projectile/buff
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=!obl.temp.same_owner] run effect give @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting] regeneration 1 3 true
## PARTICLES & SOUND
particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 20
playsound minecraft:entity.generic.explode hostile @a ~ ~.5 ~ 0.6 2
playsound minecraft:item.shield.block hostile @a ~ ~.5 ~ 0.6 1.3
## MISC
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=item] run function oblivion:tech/parrying/projectile/list/item.modify
execute if predicate oblivion:items/hold.viking_shield.off unless entity @s[tag=obl.empowered.viking_shield] run function oblivion:items/shield/viking.parry_success
advancement grant @s[tag=obl.just_parried_fucking_lightning] only oblivion:advancements/weaponry/shield/parrying_the_world parry.lightning_bolt
advancement grant @s[tag=obl.just_parried_fucking_lightning] only oblivion:advancements/weaponry/shield/additions/lightning_bolt
execute if entity @s[tag=obl.just_parried_fucking_lightning] anchored eyes run function oblivion:tech/raycast/parrying_lightning
scoreboard players add @s obl.parry.overall_count 1
execute if score @s obl.parry.overall_count matches 100.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.100
execute if score @s obl.parry.overall_count matches 1000.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.1000
execute if score @s obl.parry.overall_count matches 10000.. run advancement grant @s only oblivion:advancements/weaponry/shield/additions/parry.10000
execute if entity @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=obl.parryable_mob] run advancement grant @s only oblivion:advancements/weaponry/shield/additions/whole_mob
## CLEANUP
effect clear @s slowness
effect clear @s blindness
scoreboard players set @s obl.parry.tick 0


###   A D V A N C E M E N T S
advancement grant @s only oblivion:advancements/weaponry/shield/parry
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] unless entity @s[tag=obl.temp.same_owner] run advancement grant @p[tag=obl.temp.reflecting,scores={obl.player_health=..1}] only oblivion:advancements/weaponry/shield/additions/half_a_heart
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected,type=ender_pearl] on origin run tag @s add obl.temp.origin
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run function oblivion:tech/parrying/projectile/advancements
tag @e[type=#oblivion:all_mobs] remove obl.temp.origin


###   L A U N C H   P R O J E C T I L E
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] anchored eyes run summon marker ^ ^ ^.0001 {Tags:["obl.temp.motion_modify"]}
execute as @e[type=marker,tag=obl.temp.motion_modify] at @s run data modify entity @s Rotation set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] Rotation
execute as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ^ ^ ^1
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=fireball] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ^ ^ ^3
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=dragon_fireball] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ^ ^ ^3
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=small_fireball] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ^ ^ ^3
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=wither_skull] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ^ ^ ^3
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=ender_pearl] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ~ ~.1 ~
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=tnt] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ~ ~.25 ~
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=potion] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ~ ~.1 ~
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=experience_bottle] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ~ ~.1 ~
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=firework_rocket] as @e[type=marker,tag=obl.temp.motion_modify] at @s run tp @s ~ ~-.02 ~
## SPEED
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[tag=obl.parry_strength.1] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^.8 summon marker run function oblivion:tech/parrying/projectile/launch
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[tag=obl.parry_strength.2] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1.5 summon marker run function oblivion:tech/parrying/projectile/launch
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[tag=obl.parry_strength.3] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^2.5 summon marker run function oblivion:tech/parrying/projectile/launch
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run data modify entity @s[tag=!obl.power_instead_motion] Motion set from storage oblivion:temp vector
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run data modify entity @s[tag=obl.power_instead_motion] power set from storage oblivion:temp vector
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] run data modify entity @s[type=!ender_pearl,type=!trident,type=!shulker_bullet,type=!item] Owner set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] UUID
## MISC
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=ender_pearl] if entity @p[tag=obl.temp.reflecting,predicate=oblivion:is.sneaking] run data modify entity @s Owner set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] UUID
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=item] run data modify entity @s Thrower set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] UUID
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=firework_rocket] run data merge entity @s {ShotAtAngle:1b,Life:1}
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=trident] run function oblivion:tech/parrying/projectile/modify_damage
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=arrow] run function oblivion:tech/parrying/projectile/modify_damage
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=falling_block] run data merge entity @s {FallHurtAmount:12f,Time:1}
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}}] run function oblivion:tech/parrying/projectile/list/anvil.modify
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=magma_cube] run scoreboard players set @s obl.ballin 200
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=magma_cube] run tag @s add obl.ballin
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] if entity @s[type=shulker_bullet] run tag @s add obl.temp.reflecting_shulker_bullet
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=obl.crystodian] at @s run function oblivion:abilities/mobs/crystodian/reflected
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected,tag=obl.marauder.grenade] run scoreboard players set @s obl.ghost_ship.grenade_fuse 30
execute as @e[type=#oblivion:parryable,tag=obl.temp.reflected] at @s if entity @s[type=shulker_bullet] summon shulker_bullet run function oblivion:tech/parrying/projectile/list/shulker_bullet.modify


###   C L E A N U P
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.temp.same_owner
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.temp.reflected
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.projectile.parried
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.parry_strength.1
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.parry_strength.2
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.parry_strength.3
tag @e[type=#oblivion:parryable,tag=obl.temp.reflected] remove obl.power_instead_motion
kill @e[type=marker,tag=obl.temp.motion_modify]
tag @e[type=#oblivion:all_mobs] remove obl.reflected
tag @e[type=#oblivion:all_mobs] remove obl.temp.reflecting
tag @e[type=#oblivion:all_mobs] remove obl.temp.no_reflected


#execute if entity @s[tag=obl.serious_attack] run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 20
#execute if entity @s[tag=obl.serious_attack] run particle minecraft:firework ~ ~ ~ 0 0 0 0.5 50
#execute if entity @s[tag=obl.serious_attack] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0.5
#execute if entity @s[tag=obl.serious_attack] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0.7
#execute if entity @s[tag=obl.serious_attack] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0.9
#execute if entity @s[tag=obl.serious_attack] run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.85