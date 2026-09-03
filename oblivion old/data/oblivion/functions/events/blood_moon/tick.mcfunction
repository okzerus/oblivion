#execute unless entity @e[tag=nethermothron] run bossbar set nethermothron visible false
#execute at @e[tag=nethermothron] if entity @a[distance=..50] run bossbar set nethermothron visible true

###   M O B   S P A W N I N G
scoreboard players add next_mob oblivion 1

execute as @a[gamemode=!spectator,scores={obl.difficulty=5..}] at @s if dimension overworld run scoreboard players set @s obl.event_mobs_near 0
execute as @a[gamemode=!spectator,scores={obl.difficulty=5..}] at @s if dimension overworld at @e[type=#oblivion:agro,tag=obl.blood_mob,distance=..70] run scoreboard players add @s obl.event_mobs_near 1
execute if score next_mob oblivion matches 160.. as @a[gamemode=!spectator,scores={obl.difficulty=5..}] at @s if dimension overworld unless score @s obl.event_mobs_near matches 20.. run function oblivion:events/blood_moon/mobs
execute if score next_mob oblivion matches 160.. run scoreboard players set next_mob oblivion 0

###   M O B   A B I L I T I E S
execute as @e[tag=obl.psycho] at @s run function oblivion:abilities/events/blood_moon/psycho/main

###   F U N C T I O N
## DISABLE SLEEPING
execute as @a store result score @s obl.sleeptimer run data get entity @s SleepTimer 1
execute as @a[scores={obl.sleeptimer=1..}] at @s run function oblivion:events/disable_sleeping
## PARTICLES
execute as @a[gamemode=!spectator,scores={obl.difficulty=5..}] at @s if dimension overworld run particle minecraft:falling_lava ~ ~15 ~ 16 0 16 0 15 normal @s
execute as @a[gamemode=!spectator,scores={obl.difficulty=5..}] at @s if dimension overworld run particle dust 0.6 0 0 5 ~ ~15 ~ 16 0 16 0 5 normal @s
execute as @e[tag=obl.lightning_buffing] at @s run function oblivion:events/blood_moon/lightning_buff_process
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",tag:{cursedbone:1b}}}] at @s run function oblivion:events/blood_moon/cursed_bone

gamerule mobGriefing false
effect give @a[gamemode=!spectator,scores={obl.difficulty=5..}] hunger 5 4 true

execute as @a at @s if entity @e[tag=pixie,distance=..25] run advancement grant @s only oblivion:advancements/mobs/overworld/pixiebloodmoon
