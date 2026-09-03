###   L I V I N G
scoreboard players add @s obl.projectle_progress 1
execute if score @s obl.projectle_progress matches 80.. run kill @s


###   S P E E D
execute if entity @s[tag=!obl.dont_move] unless score @s obl.projectle_progress matches 40.. run tp @s ^ ^ ^1.25
execute if entity @s[tag=!obl.dont_move] if score @s obl.projectle_progress matches 40.. run tp @s ^ ^-0.05 ^1.25


###   P R O J E C T I L E S
## LIST
function oblivion:tech/projectiles/list/cannonball
## REFLECTED
execute if entity @s[tag=obl.projectile.reflected] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 3 force 
execute if entity @s[tag=obl.projectile.reflected] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 8 force
execute if entity @s[tag=obl.projectile.reflected] run tp @s ^ ^ ^2