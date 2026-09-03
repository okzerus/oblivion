tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] feet
tag @s add obl.black_death.speed.2

# Store both YAW and PITCH into a scoreboard
execute store result score @s obl.rotation.yaw run data get entity @s Rotation[0]
execute store result score @s obl.rotation.pitch run data get entity @s Rotation[1]

# YAW
scoreboard players set randomizer obl.rng.range 40
function oblivion:rng
scoreboard players remove randomizer obl.rng 20

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.yaw -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.yaw += @s obl.rotation.temp

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s obl.rotation.yaw


# PITCH
scoreboard players set randomizer obl.rng.range 40
function oblivion:rng
scoreboard players remove randomizer obl.rng 20

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.yaw -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.yaw += @s obl.rotation.temp

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s obl.rotation.pitch