###   F U N C T I O N
scoreboard players remove @s obl.spawning_process 1
execute if score @s obl.spawning_process matches 35..100 run tp @s @p[distance=..4]
execute if score @s obl.spawning_process matches 10 run function oblivion:abilities/reflectable_attack_announce
execute if score @s obl.spawning_process matches ..0 run function oblivion:mobs/overworld/crystodian

###   M I S C
playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 0.65
playsound minecraft:block.stone.hit hostile @a ~ ~ ~ 1 0.5
particle block amethyst_block ~ ~ ~ 0.05 0 0.05 1 3
particle dust 1 0 1 1 ~ ~ ~ 0.2 0 0.2 1 3