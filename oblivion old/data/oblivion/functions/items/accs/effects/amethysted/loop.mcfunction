scoreboard players add @s obl.amethysted 1

particle dust 1 0.2 1 1 ~ ~.5 ~ 0.3 0.6 0.3 0 5 force
tp @s ~ ~ ~ ~ 90

execute if score @s obl.amethysted matches 16 run function oblivion:items/accs/effects/amethysted/remove