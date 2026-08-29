###   P A R R Y
tag @s add obl.projectile.parried
tag @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] add obl.parry_success
tag @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] add obl.parry_success.projectile
tag @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] add obl.disable.direct_parry
tag @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] add obl.parry.sound_pitch
execute as @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] if score @s obl.parry.after_tick matches 30..39 run advancement grant @s only obl:advancements/weaponry/shield/additions/multiple_parry
scoreboard players set @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] obl.parry.after_tick 40
scoreboard players add @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] obl.parry.count 1
execute as @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] run function obl:tech/parrying/sound
effect give @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] slowness 2 9 true
effect give @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] blindness 5 9 true
scoreboard players operation @s obl.id.reflect = @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] obl.id


###   M O D I F Y
tag @s add obl.dont_move
scoreboard players set @s[type=marker] obl.projectle_progress 0
data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}
data merge entity @s[tag=obl.parryable_mob] {NoAI:1b}
execute if entity @s[type=magma_cube,tag=obl.black_death.charging] run tag @s add obl.black_death.dont_move
execute if entity @s[type=tnt] run function obl:tech/parrying/projectile/list/tnt.modify
execute if entity @s[type=item] run data merge entity @s {PickupDelay:32767s}
execute if entity @s[type=trident] run data merge entity @s {DealtDamage:0b}
execute if entity @s[type=shulker_bullet] run summon marker ~ ~ ~ {Tags:[obl.shulker_bullet_teleporter]}
execute if entity @s[type=falling_block] run tp @s @s
execute if entity @s[type=lightning_bolt] as @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function obl:tech/parrying/projectile/list/lightning_bolt.player_parry


###   P A R R Y   S T R E N G T H
# For later Motion adjustions
execute if entity @s[type=#minecraft:arrows] run tag @s add obl.parry_strength.3
execute if entity @s[type=snowball] run tag @s add obl.parry_strength.3
execute if entity @s[type=egg] run tag @s add obl.parry_strength.3
execute if entity @s[type=trident] run tag @s add obl.parry_strength.3
execute if entity @s[type=ender_pearl] run tag @s add obl.parry_strength.3
execute if entity @s[type=firework_rocket] run tag @s add obl.parry_strength.2
execute if entity @s[type=zombie,tag=obl.crystodian] run tag @s add obl.parry_strength.2
execute if entity @s[type=armor_stand,tag=obl.marauder.grenade] run tag @s add obl.parry_strength.2
execute if entity @s[type=fireball] run tag @s add obl.parry_strength.1
execute if entity @s[type=dragon_fireball] run tag @s add obl.parry_strength.2
execute if entity @s[type=small_fireball] run tag @s add obl.parry_strength.2
execute if entity @s[type=item] run tag @s add obl.parry_strength.2
execute if entity @s[type=fishing_bobber] run tag @s add obl.parry_strength.3
execute if entity @s[type=potion] run tag @s add obl.parry_strength.2
execute if entity @s[type=experience_bottle] run tag @s add obl.parry_strength.2
execute if entity @s[type=magma_cube] run tag @s add obl.parry_strength.2
execute if entity @s[type=shulker_bullet] run tag @s add obl.parry_strength.2
execute if entity @s[type=falling_block] run tag @s add obl.parry_strength.1
execute if entity @s[type=llama_spit] run tag @s add obl.parry_strength.2
execute if entity @s[type=wither_skull] run tag @s add obl.parry_strength.2
execute if entity @s[type=tnt] run tag @s add obl.parry_strength.1
execute if entity @s[type=wither_skull] run tag @s add obl.power_instead_motion
execute if entity @s[type=small_fireball] run tag @s add obl.power_instead_motion
execute if entity @s[type=dragon_fireball] run tag @s add obl.power_instead_motion
execute if entity @s[type=fireball] run tag @s add obl.power_instead_motion


###   C L E A N U P
tag @e[type=#obl:all_mobs] remove obl.temp.parrying