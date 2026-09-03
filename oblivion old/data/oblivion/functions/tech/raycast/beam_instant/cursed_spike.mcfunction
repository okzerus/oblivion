tp @s ~ ~ ~
particle dust 0.2 1 0.2 1 ^ ^ ^ 0.1 0.1 0.1 0.01 2
particle dust 0.2 1 0.2 1 ^ ^ ^.3 0.1 0.1 0.1 0.01 2
particle dust 0.2 1 0.2 1 ^ ^ ^.6 0.1 0.1 0.1 0.01 2
particle dust 0.2 1 0.2 1 ^ ^ ^.9 0.1 0.1 0.1 0.01 2
particle electric_spark ^ ^ ^ 0.1 0.1 0.1 0.01 1
particle electric_spark ^ ^ ^.3 0.1 0.1 0.1 0.01 1
particle electric_spark ^ ^ ^.6 0.1 0.1 0.1 0.01 1
particle electric_spark ^ ^ ^.9 0.1 0.1 0.1 0.01 1
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 0.25 1
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.25 1.5
scoreboard players add @s obl.beam_progress 1


execute if entity @a[distance=...85] at @s run function oblivion:tech/projectiles/cursed_spike/hit

execute if score @s obl.beam_progress matches 50.. run kill @s
execute unless score @s obl.beam_progress matches 50.. positioned ^ ^ ^1.2 run function oblivion:tech/raycast/beam_instant/cursed_spike
