tag @a[sort=nearest,limit=1,tag=obl.temp.cannon_target.right_side] add obl.temp.cannonball_target
tag @a[sort=nearest,limit=1,tag=obl.temp.cannon_target.left_side] add obl.temp.cannonball_target

tp @s ~ ~ ~ facing entity @p[tag=obl.temp.cannonball_target] eyes


###   E F F E C T S
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.3
execute unless entity @s[tag=obl.cannonball.flaming] run playsound minecraft:entity.firework_rocket.large_blast_far hostile @a ~ ~ ~ 1 0.9 0.1
execute if entity @s[tag=obl.cannonball.flaming] run playsound minecraft:entity.firework_rocket.large_blast hostile @a ~ ~ ~ 1 0.75 0.1
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
particle minecraft:cloud ~ ~ ~ 0 0.2 0 0.05 10 force
execute if entity @s[tag=obl.cannonball.flaming] run particle minecraft:flame ~ ~ ~ 0 0.2 0 0.05 10 force


###   S P R E A D
# Store both YAW and PITCH into a scoreboard
execute store result score @s obl.rotation.yaw run data get entity @s Rotation[0]
execute store result score @s obl.rotation.pitch run data get entity @s Rotation[1]
# YAW
scoreboard players set randomizer obl.rng.range 10
function oblivion:rng
scoreboard players remove randomizer obl.rng 5

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.yaw -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.yaw += @s obl.rotation.temp

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s obl.rotation.yaw
# PITCH
scoreboard players set randomizer obl.rng.range 6
function oblivion:rng
scoreboard players remove randomizer obl.rng 3

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.pitch -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.pitch += @s obl.rotation.temp

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s obl.rotation.pitch



###   C L E A N U P
tag @a remove obl.temp.cannonball_target