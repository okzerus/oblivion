###   S T A R T
## DAMAGE SHIELD
execute if entity @s[gamemode=!creative,predicate=obl:items/hold.shield] run function obl:tech/parrying/shield_damage.fail.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=obl:items/hold.shield.off] run function obl:tech/parrying/shield_damage.fail.offhand
tag @s remove obl.temp.mainhand_detected
## PARRY CD
scoreboard players set @s obl.parry.cd 50
scoreboard players operation #id.temp.reflect obl.id.reflect = @s obl.id
execute if entity @e[tag=obl.projectile.parried,predicate=obl:matching_score.reflect,tag=obl.projectile.player_owner] run scoreboard players set @s obl.parry.cd 100
## EFFECTS
effect clear @s blindness
effect clear @s slowness
effect give @s blindness 1 0 true
tag @s remove obl.parry_success
tag @s remove obl.parry_success.projectile
execute if entity @s[tag=obl.just_parried_fucking_lightning] run function obl:tech/parrying/projectile/list/lightning_bolt.fail
scoreboard players set @s obl.parry.tick 0
particle minecraft:dust 0.6 0 0 0.8 ~ ~.5 ~ 0.3 0.6 0.3 0 50
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 0.8

###   O N   P R O J E C T I L E
tag @s add obl.temp.original_target
execute as @e[type=#obl:parryable,tag=obl.projectile.parried,predicate=obl:matching_score.reflect] at @s run function obl:tech/parrying/projectile/list/fail
execute as @e[type=magma_cube,tag=obl.boss.black_death,tag=obl.projectile.parried,predicate=obl:matching_score.reflect] at @s run function obl:abilities/bosses/black_death/charged_explode
execute as @e[type=marker,tag=obl.projectile.curses,tag=obl.projectile.parried,predicate=obl:matching_score.reflect] at @s run function obl:tech/projectiles/hit/cursed_beam
execute as @e[type=marker,tag=obl.projectile.curses.accessory,tag=obl.projectile.parried,predicate=obl:matching_score.reflect] at @s run function obl:tech/projectiles/hit/cursed_beam.accessory
execute as @e[type=marker,tag=obl.projectile.yamato_sword,tag=obl.projectile.parried,predicate=obl:matching_score.reflect] at @s run function obl:tech/projectiles/hit/yamato_sword
tag @s remove obl.temp.original_target