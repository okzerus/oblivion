execute unless entity @s[tag=obl.init] run function oblivion:tech/structures/list/ghost_ship/init
execute if score @s obl.ghost_ship.shooting_cd matches 1.. run scoreboard players remove @s obl.ghost_ship.shooting_cd 1


###   F I N D   T A R G E T
## RIGHT SIDE
execute as @e[type=marker,tag=obl.ghost_ship.right_side,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^-4 ^60 run tag @a[distance=..48,tag=!obl.invulnerable] add obl.temp.cannon_target.right_side
## LEFT SIDE
execute as @e[type=marker,tag=obl.ghost_ship.left_side,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^-4 ^60 run tag @a[distance=..48,tag=!obl.invulnerable] add obl.temp.cannon_target.left_side

execute if entity @s[tag=obl.ghost_ship.shooting] unless entity @a[tag=obl.temp.cannon_target.right_side,distance=..100] unless entity @a[tag=obl.temp.cannon_target.left_side,distance=..100] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cleanup


###   O C C U P Y   C H E C K
execute as @e[type=marker,tag=obl.ghost_ship.cannon] unless entity @s[tag=obl.ghost_ship.cannon.occupied] at @s positioned ^ ^ ^-4 if entity @e[type=skeleton,tag=obl.ghost_ship.cannoneer,tag=!obl.ghost_ship.cannoneer.switched,distance=..1,limit=1] run tag @s add obl.ghost_ship.cannon.occupied
execute as @e[type=marker,tag=obl.ghost_ship.cannon] if entity @s[tag=obl.ghost_ship.cannon.occupied] at @s positioned ^ ^ ^-4 unless entity @e[type=skeleton,tag=obl.ghost_ship.cannoneer,tag=!obl.ghost_ship.cannoneer.switched,distance=..1,limit=1] run tag @s remove obl.ghost_ship.cannon.occupied


###   S H O O T I N G   S T A R T
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.right_side,distance=24..48] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.right_lower.start
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.left_side,distance=24..48] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.left_lower.start
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.right_side,distance=49..120] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.right_upper.start
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.left_side,distance=49..120] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.left_upper.start



###   S H O O T I N G   P R O C C E S S
execute if score @s obl.ghost_ship.shooting_delay matches 1.. run scoreboard players remove @s obl.ghost_ship.shooting_delay 1
execute if entity @s[tag=obl.ghost_ship.shooting.right_lower] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cannoneer_check
execute if entity @s[tag=obl.ghost_ship.shooting.left_lower] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.left,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cannoneer_check
execute if entity @s[tag=obl.ghost_ship.shooting.right_upper] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.upper,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cannoneer_check
execute if entity @s[tag=obl.ghost_ship.shooting.left_upper] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.left,tag=obl.ghost_ship.cannon.upper,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cannoneer_check



###   C L E A N U P
tag @a remove obl.temp.cannon_target.right_side
tag @a remove obl.temp.cannon_target.left_side
execute if score @s obl.ghost_ship.shooting_cd matches 0 run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cleanup