tp @s ~ ~ ~ facing ^ ^ ^-3
tag @s add obl.black_death.speed.1
tag @s remove obl.black_death.speed.2
tag @s remove obl.black_death.speed.3
execute if entity @s[tag=obl.black_death.charging] run function oblivion:abilities/bosses/black_death/charged_explode

# Store both YAW and PITCH into a scoreboard
execute store result score @s obl.rotation.yaw run data get entity @s Rotation[0]
execute store result score @s obl.rotation.pitch run data get entity @s Rotation[1]

# YAW
scoreboard players set randomizer obl.rng.range 120
function oblivion:rng
scoreboard players remove randomizer obl.rng 60

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.yaw -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.yaw += @s obl.rotation.temp

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s obl.rotation.yaw


# PITCH
scoreboard players set randomizer obl.rng.range 120
function oblivion:rng
scoreboard players remove randomizer obl.rng 60

execute store result score @s obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @s obl.rotation.yaw -= @s obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @s obl.rotation.yaw += @s obl.rotation.temp

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s obl.rotation.pitch