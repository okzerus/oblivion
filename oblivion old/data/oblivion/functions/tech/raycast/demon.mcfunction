particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0.01 10 force
particle flame ^ ^ ^ 0 0 0 0.01 10 force
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.2 1
execute as @a[distance=..1.9] at @s run function oblivion:tech/abilities/demonbeamdamage
execute if entity @s[distance=..40] positioned ^ ^-0.02 ^.3 run function oblivion:tech/raycast/demon