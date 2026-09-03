execute unless score @s obl.used.cursed_armor_sword matches 1 run scoreboard players add @s obl.process.cursed_armor_sword 1

execute if score @s obl.process.cursed_armor_sword matches 1 anchored eyes positioned ^ ^ ^.1 run function oblivion:abilities/reflectable_attack_announce
execute if score @s obl.process.cursed_armor_sword matches 1 anchored eyes positioned ^ ^ ^.1 rotated ~-10 ~ run function oblivion:abilities/beam_attack_particles
execute if score @s obl.process.cursed_armor_sword matches 1 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s obl.process.cursed_armor_sword matches 1 as @e[type=marker,tag=obl.projectile_shooter.cursed,sort=nearest,limit=1,tag=!obl.temp.modified] at @s run tp @s ~ ~ ~ ~-10 ~
execute if score @s obl.process.cursed_armor_sword matches 1 run tag @e[type=marker,tag=obl.beam_shooter.cursed,limit=1,sort=nearest] add obl.temp.modified
execute if score @s obl.process.cursed_armor_sword matches 1 anchored eyes positioned ^ ^ ^.1 run function oblivion:abilities/beam_attack_particles
execute if score @s obl.process.cursed_armor_sword matches 1 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s obl.process.cursed_armor_sword matches 1 run tag @e[type=marker,tag=obl.projectile_shooter.cursed,limit=1,sort=nearest] add obl.temp.modified
execute if score @s obl.process.cursed_armor_sword matches 1 anchored eyes positioned ^ ^ ^.1 rotated ~10 ~ run function oblivion:abilities/beam_attack_particles
execute if score @s obl.process.cursed_armor_sword matches 1 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s obl.process.cursed_armor_sword matches 1 as @e[type=marker,tag=obl.projectile_shooter.cursed,sort=nearest,limit=1,tag=!obl.temp.modified] at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s obl.process.cursed_armor_sword matches 1 run tag @e[type=marker,tag=obl.projectile_shooter.cursed] remove obl.temp.modified
execute if score @s obl.process.cursed_armor_sword matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.2

execute if score @s obl.process.cursed_armor_sword matches 15.. run function oblivion:items/abilities/cursed_armor_sword/cd