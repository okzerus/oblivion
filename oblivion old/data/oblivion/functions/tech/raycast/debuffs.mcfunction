particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0.01 20 force
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.2 1
execute as @a[distance=..2] at @s run function oblivion:tech/abilities/hungerabilities/beamdebuff
execute if entity @s[distance=..20] positioned ^ ^ ^.3 unless entity @a[distance=..1.9] run function oblivion:tech/raycast/debuffs