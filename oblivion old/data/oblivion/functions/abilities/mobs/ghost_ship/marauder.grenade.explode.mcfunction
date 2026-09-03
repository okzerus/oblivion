particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 30
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 3
particle minecraft:flame ~ ~ ~ 0.8 0 0.8 0 20
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.7

execute if entity @e[type=stray,tag=obl.ghost_ship.marauder] as @a[distance=..5] run damage @s 10 minecraft:player_explosion by @e[type=minecraft:stray,limit=1,sort=nearest,tag=obl.ghost_ship.marauder]
execute unless entity @e[type=stray,tag=obl.ghost_ship.marauder] as @a[distance=..5] run damage @s 10 minecraft:explosion

kill @e[type=block_display,tag=obl.marauder.grenade,limit=1,sort=nearest]
kill @s