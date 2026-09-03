execute unless entity @s[tag=obl.init] run function oblivion:tech/structures/list/ghost_ship/init
execute if score @s obl.ghost_ship.shooting_cd matches 1.. run scoreboard players remove @s obl.ghost_ship.shooting_cd 1


###   F I N D   T A R G E T
## RIGHT SIDE
execute as @e[type=marker,tag=obl.ghost_ship.right_side,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^-4 ^60 run tag @a[distance=..44] add obl.temp.cannon_target.right_side
## LEFT SIDE
execute as @e[type=marker,tag=obl.ghost_ship.left_side,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^-4 ^60 run tag @a[distance=..44] add obl.temp.cannon_target.left_side

execute if entity @a[tag=obl.temp.cannon_target.right_side,distance=..23] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cleanup
execute if entity @a[tag=obl.temp.cannon_target.left_side,distance=..23] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cleanup



###   S H O O T I N G   S T A R T
## RIGHT SIDE
# Upper
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.right_side,distance=49..120] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.right_upper.start
# Lower
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.right_side,distance=24..48] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.right_lower.start
## LEFT SIDE
# Upper
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.left_side,distance=49..120] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.left_upper.start
# Lower
execute unless entity @s[tag=obl.ghost_ship.shooting] if entity @a[tag=obl.temp.cannon_target.left_side,distance=24..48] run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.left_lower.start



###   S H O O T I N G   P R O C C E S S
scoreboard players remove @s obl.ghost_ship.shooting_delay 1
execute if entity @s[tag=obl.ghost_ship.shooting.right_upper] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.upper,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/spawn
execute if entity @s[tag=obl.ghost_ship.shooting.right_lower] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.right,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/spawn
execute if entity @s[tag=obl.ghost_ship.shooting.left_upper] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.left,tag=obl.ghost_ship.cannon.upper,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/spawn
execute if entity @s[tag=obl.ghost_ship.shooting.left_lower] unless score @s obl.ghost_ship.shooting_delay matches 1.. at @e[type=marker,tag=obl.ghost_ship.cannon.first,tag=obl.ghost_ship.cannon.shot] as @e[type=marker,tag=obl.ghost_ship.cannon.left,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.shot,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/spawn



###   C L E A N U P
tag @a remove obl.temp.cannon_target.right_side
tag @a remove obl.temp.cannon_target.left_side
execute if score @s obl.ghost_ship.shooting_cd matches 0 run function oblivion:tech/structures/list/ghost_ship/cannons/shooting.cleanup