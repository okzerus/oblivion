particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 60
particle minecraft:explosion ~ ~ ~ 0.9 0.9 0.9 0 6
particle minecraft:flame ~ ~ ~ 1.5 0 1.5 0 50
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5

execute as @a[distance=..7] run damage @s 25 minecraft:explosion

kill @e[type=block_display,tag=obl.marauder.grenade,limit=1,sort=nearest]
kill @s