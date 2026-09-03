tag @s remove obl.ghost_ship.shooting
tag @s remove obl.ghost_ship.shooting.right_upper
tag @s remove obl.ghost_ship.shooting.right_lower
tag @s remove obl.ghost_ship.shooting.left_upper
tag @s remove obl.ghost_ship.shooting.left_lower
scoreboard players set @s obl.ghost_ship.shooting_delay 0
scoreboard players set @s obl.ghost_ship.shooting_cd 0
tag @e[type=marker,tag=obl.ghost_ship.cannon,distance=..50] remove obl.ghost_ship.cannon.shot