particle dust 1 0.7 1 1.5 ^ ^ ^ 0.1 0.1 0.1 0.01 3
particle dust 1 0.7 1 1.5 ^ ^ ^-.20 0.1 0.1 0.1 0.01 3
particle dust 1 0.7 1 1.5 ^ ^ ^-.50 0.1 0.1 0.1 0.01 3
particle dust 1 0.7 1 1.5 ^ ^ ^-.80 0.1 0.1 0.1 0.01 3
particle end_rod ^ ^ ^ 0.1 0.1 0.1 0.01 3
particle end_rod ^ ^ ^-.20 0.1 0.1 0.1 0.01 3
particle end_rod ^ ^ ^-.50 0.1 0.1 0.1 0.01 3
particle end_rod ^ ^ ^-.80 0.1 0.1 0.1 0.01 3
particle sweep_attack ^ ^ ^ 0.1 0.1 0.1 0 1
particle sweep_attack ^ ^ ^-.20 0.1 0.1 0.1 0 1
particle sweep_attack ^ ^ ^-.50 0.1 0.1 0.1 0 1
particle sweep_attack ^ ^ ^-.80 0.1 0.1 0.1 0 1
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 0.3 1
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.3 1.5
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 0.3 1.2
playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 0.3 1.2

execute if entity @e[type=marker,tag=obl.pixie_swing,distance=..24] positioned ^ ^ ^1 run function oblivion:tech/raycast/beam_instant/pixie_swing

execute as @a[distance=..1.3] at @s run function oblivion:tech/abilities/amethystpixieabilities/instant_beam_hit