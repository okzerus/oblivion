###   L I V I N G
scoreboard players add @s obl.projectle_progress 1
execute if score @s obl.projectle_progress matches 45.. run kill @s


###   S P E E D
execute if entity @s[tag=!obl.dont_move,tag=obl.projectile.speed.1] run tp @s ^ ^ ^0.9
execute if entity @s[tag=!obl.dont_move,tag=obl.projectile.speed.2] run tp @s ^ ^ ^1.2
execute if entity @s[tag=!obl.dont_move,tag=obl.projectile.speed.3] run tp @s ^ ^ ^1.6


###   P R O J E C T I L E S
## LIST
execute if entity @s[tag=obl.projectile.curses] run function oblivion:tech/projectiles/list/curses
execute if entity @s[tag=obl.projectile.curses.accessory] run function oblivion:tech/projectiles/list/curses_accessory
execute if entity @s[tag=obl.projectile.shockwave] run function oblivion:tech/projectiles/list/shockwave
execute if entity @s[tag=obl.projectile.cursed_ground] run function oblivion:tech/projectiles/list/cursed_ground
execute if entity @s[tag=obl.projectile.yamato_sword] run function oblivion:tech/projectiles/list/yamato_sword
## MISC
execute if entity @s[tag=obl.projectile.unusual] run function oblivion:tech/unusual/effects/boots/projectiles
## REFLECTED
execute if entity @s[tag=obl.projectile.reflected] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 3


###   P O I N T E R S
execute if entity @s[tag=obl.pointer.black_death_memorial] as @a[tag=obl.near.black_death_memorial] run particle minecraft:dust 0 0 0 1.2 ~ ~ ~ 0 0 0 0 1 normal @s