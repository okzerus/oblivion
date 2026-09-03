scoreboard players add @s obl.weeping_angel.breaking_process 1
execute unless score @s obl.weeping_angel.restoring_cd matches 60.. run scoreboard players set @s obl.weeping_angel.restoring_cd 60

execute unless score @s obl.weeping_angel.broken_part matches 1.. run particle block stone ~ ~1.5 ~ 0.25 0.25 0.25 0 9
execute unless score @s obl.weeping_angel.broken_part matches 1.. run particle crit ~ ~1.5 ~ 0.25 0.25 0.25 0.1 18
execute if score @s obl.weeping_angel.broken_part matches 1 run particle block stone ~ ~1.1 ~ 0.25 0.35 0.25 0 9
execute if score @s obl.weeping_angel.broken_part matches 1 run particle crit ~ ~1.1 ~ 0.25 0.35 0.25 0.1 18
execute if score @s obl.weeping_angel.broken_part matches 2 run particle block stone ~ ~.5 ~ 0.25 0.3 0.25 0 9
execute if score @s obl.weeping_angel.broken_part matches 2 run particle crit ~ ~.5 ~ 0.25 0.3 0.25 0.1 18
execute if score @s obl.weeping_angel.broken_part matches 3 run particle block bedrock ~ ~.3 ~ 0.2 0.2 0.2 0 12

playsound minecraft:block.stone.hit hostile @a ~ ~ ~ 0.6 0.7
execute unless score @s obl.weeping_angel.broken_part matches ..3 run playsound minecraft:block.deepslate.hit hostile @a ~ ~ ~ 0.6 0.7
execute unless score @s obl.weeping_angel.broken_part matches ..3 run playsound minecraft:block.deepslate.hit hostile @a ~ ~ ~ 0.6 0.7

execute if score @s obl.weeping_angel.breaking_process matches 10.. unless score @s obl.weeping_angel.broken_part matches 3.. run function oblivion:abilities/mobs/weeping_angel/breaking/break