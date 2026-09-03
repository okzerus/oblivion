execute as @e[type=marker,tag=obl.ghost_ship.sorceress.teleport_point.air,limit=1,sort=random,tag=!obl.ghost_ship.sorceress.used_point] run function oblivion:abilities/mobs/ghost_ship/sorceress.teleport.find_point
tp @s @e[type=marker,tag=obl.ghost_ship.sorceress.used_point,limit=1,sort=nearest]

scoreboard players set @s obl.ghost_ship.sorceress.teleport_cd 100
data merge entity @s {NoGravity:1b}
tag @s add obl.ghost_ship.sorceress.airborne
tag @s remove obl.ghost_ship.sorceress.on_ground

playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1.2
particle minecraft:flash ~ ~ ~
execute at @e[type=marker,tag=obl.ghost_ship.sorceress.used_point,limit=1,sort=nearest] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1.2
execute at @e[type=marker,tag=obl.ghost_ship.sorceress.used_point,limit=1,sort=nearest] run particle minecraft:flash ~ ~ ~