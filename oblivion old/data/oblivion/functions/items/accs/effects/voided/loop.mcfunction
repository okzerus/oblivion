scoreboard players add @s obl.voided 1

particle minecraft:block black_concrete ~ ~.5 ~ 0.3 0.6 0.3 0 5 force
particle dust 0 0 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0 5 force

execute if score @s obl.voided matches 50 run function oblivion:items/accs/effects/voided/remove