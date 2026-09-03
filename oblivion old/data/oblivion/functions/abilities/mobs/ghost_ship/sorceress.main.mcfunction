###   F U N C T I O N
## ACTIVATING
execute if entity @p[distance=..7] run tag @s remove obl.ghost_ship.sorceress.waiting_player
## TELEPORTING
execute if score @s obl.ghost_ship.sorceress.teleport_cd matches 1.. run scoreboard players remove @s obl.ghost_ship.sorceress.teleport_cd 1
execute unless score @s[tag=!obl.ghost_ship.sorceress.waiting_player] obl.ghost_ship.sorceress.teleport_cd matches 1.. run function oblivion:abilities/mobs/ghost_ship/sorceress.teleport.air
## ON HIT
execute if entity @s[nbt={HurtTime:10s}] run function oblivion:abilities/mobs/ghost_ship/sorceress.hurt


###   A I R B O R N E
## VEXES
execute if entity @s[tag=obl.ghost_ship.sorceress.airborne] unless score @s obl.mob.ability_cd matches 1.. run function oblivion:abilities/mobs/ghost_ship/sorceress.vex
## FACING PLAYER
execute if entity @s[tag=obl.ghost_ship.sorceress.airborne] unless score @s obl.ghost_ship.sorceress.teleport_cd matches 99.. anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=!obl.invulnerable] eyes
## PARTICLES
execute if entity @s[tag=obl.ghost_ship.sorceress.airborne] run particle minecraft:enchant ~ ~ ~ 0.25 0 0.25 0 2
execute if entity @s[tag=obl.ghost_ship.sorceress.airborne] run particle minecraft:witch ~ ~ ~ 0.15 0 0.15 0 2