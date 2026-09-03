tag @s add obl.init
data merge entity @s {CustomName:'[{"text":"Корабль призрак"}]'}

###   S E T   U P   R I G H T   S I D E
execute as @e[type=marker,tag=obl.ghost_ship.right_side,tag=!obl.init] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=obl.ghost_ship.center,limit=1,sort=nearest] eyes
execute as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=!obl.init] run data modify entity @s Rotation set from entity @e[type=marker,tag=obl.ghost_ship.right_side,tag=!obl.init,limit=1,sort=nearest] Rotation
tag @e[type=marker,tag=obl.ghost_ship.right_side] add obl.init
tag @e[type=marker,tag=obl.ghost_ship.cannon.right] add obl.init


###   S E T   U P   L E F T   S I D E
execute as @e[type=marker,tag=obl.ghost_ship.left_side,tag=!obl.init] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=obl.ghost_ship.center,limit=1,sort=nearest] eyes
execute as @e[type=marker,tag=obl.ghost_ship.cannon.left,tag=!obl.init] run data modify entity @s Rotation set from entity @e[type=marker,tag=obl.ghost_ship.left_side,tag=!obl.init,limit=1,sort=nearest] Rotation
tag @e[type=marker,tag=obl.ghost_ship.left_side] add obl.init
tag @e[type=marker,tag=obl.ghost_ship.cannon.left] add obl.init