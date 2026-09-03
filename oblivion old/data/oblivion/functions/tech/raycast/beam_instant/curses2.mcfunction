particle dust 0.2 1 0.2 1.5 ^ ^ ^ 0.1 0.1 0.1 0.01 3
particle dust 0.2 1 0.2 1.5 ^ ^ ^-.30 0.1 0.1 0.1 0.01 3
particle dust 0.2 1 0.2 1.5 ^ ^ ^-.60 0.1 0.1 0.1 0.01 3
particle dust 0.2 1 0.2 1.5 ^ ^ ^-.90 0.1 0.1 0.1 0.01 3
particle electric_spark ^ ^ ^ 0.3 0.3 0.3 0.01 5
particle electric_spark ^ ^ ^-.30 0.3 0.3 0.3 0.01 5
particle electric_spark ^ ^ ^-.60 0.3 0.3 0.3 0.01 5
particle electric_spark ^ ^ ^-.90 0.3 0.3 0.3 0.01 5
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 0.4 1
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.4 1.5

execute if entity @e[type=wither_skeleton,tag=obl.boss.cursed_armor,distance=..15] positioned ^ ^ ^1.2 run function oblivion:tech/raycast/beam_instant/curses

execute as @a[distance=..1.2] at @s run function oblivion:abilities/bosses/cursed_armor/instant_beam_hit