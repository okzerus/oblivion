tag @s add obl.ghost_ship.shooting
tag @s add obl.ghost_ship.shooting.right_lower
scoreboard players set @s obl.ghost_ship.shooting_cd 80
scoreboard players set @s obl.ghost_ship.shooting_delay 0

execute at @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.lower,tag=obl.ghost_ship.cannon.first,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cannoneer_check