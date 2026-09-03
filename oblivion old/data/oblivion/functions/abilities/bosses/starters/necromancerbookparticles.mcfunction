particle minecraft:flame ~ ~.2 ~ 2 0 2 0 2
particle minecraft:lava ~ ~.2 ~ 2 0 2 0 2
particle minecraft:falling_lava ~ ~18 ~ 1.2 0 1.2 0 5 force @a
particle dust 0.6 0 0 4 ~ ~6 ~ 1.2 0 1.2 0 5 force @a
particle dust 0.6 0 0 4 ~ ~12 ~ 2.2 0 2.2 0 10 force @a
particle dust 0.6 0 0 4 ~ ~18 ~ 3.2 0 3.2 0 15 force @a
particle dust 0.6 0 0 4 ~ ~30 ~ 15.2 0 15.2 0 15 force @a
effect give @a[distance=..5] wither 5 4 false
execute positioned ~ ~9 ~ run particle dust 0 0 0 3 ~ ~ ~ 4.2 4.2 4.2 0 5 force @a