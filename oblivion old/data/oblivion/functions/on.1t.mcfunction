schedule function oblivion:on.1t 1t

###   T I C K I N G
execute as @a at @s run function oblivion:on.player.1t
execute as @e[type=#oblivion:transformable,tag=!obl.checked,tag=!obl.mob,type=!player,limit=1] at @s run function oblivion:mobs/spawn
execute as @e[type=#oblivion:custom_mobs] at @s run function oblivion:on.custom_mob.1t
execute as @e[type=#oblivion:hostile] at @s run function oblivion:on.hostile.1t
execute as @e[type=villager,tag=!obl.guide] at @s run function oblivion:qol/villager_additions
execute as @e[type=#oblivion:non_living] at @s run function oblivion:on.entity.1t
execute as @e[type=item] at @s run function oblivion:on.item.1t
execute as @e[type=#oblivion:parryable] at @s run function oblivion:on.projectile.1t
execute if score obl.isevent oblivion matches 1 run function oblivion:events/main
execute as @e[type=armor_stand,tag=obl.weapon_stand] at @s run function oblivion:mobs/particles/weapon_stand
execute as @e[type=#oblivion:tameable,tag=!obl.tamed] if data entity @s Owner run tag @s add obl.tamed

execute as @e[type=#oblivion:all_mobs.no_player,tag=obl.glow_berried] at @s run function oblivion:qol/glow_berries/tick
execute as @e[type=#oblivion:all_mobs,tag=obl.parrying.target] at @s run function oblivion:tech/parrying/direct/target
execute as @e[type=villager,tag=obl.encounter_guide] at @s run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/guide.tick

###   T I M E
execute store result score time oblivion run time query daytime
execute if score time oblivion matches 13000..23299 if score obl.isday oblivion matches 1 run function oblivion:time/next_night
execute if score time oblivion matches 23300..24000 unless score obl.isday oblivion matches 1 run function oblivion:time/next_day
execute if score time oblivion matches 1..12999 unless score obl.isday oblivion matches 1 run function oblivion:time/next_day

###   D E T E C T   M U L T I P L A Y E R
scoreboard players reset #overall obl.player_count
execute at @a run scoreboard players add #overall obl.player_count
execute if score #overall obl.player_count matches 2.. unless score #enabled obl.multiplayer matches 1 run function oblivion:tech/multiplayer_mode
execute if score #enabled obl.multiplayer matches 1 run scoreboard players set @a obl.multiplayer 1
execute unless score #enabled obl.multiplayer matches 1 run scoreboard players set @a obl.multiplayer 0


###   M I S C
tag @e[type=#oblivion:custom_particles] remove obl.temp.particle_shown
execute as @e[type=block_display,tag=obl.dragon_egg_rotation] at @s unless entity @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_egg"}},distance=..3] run function oblivion:tech/item_frame/dragon_egg/remove