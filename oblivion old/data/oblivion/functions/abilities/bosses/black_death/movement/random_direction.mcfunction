tag @s add obl.black_death.speed.1

# Get random yaw
scoreboard players set randomizer obl.rng.range 360
function oblivion:rng
scoreboard players remove randomizer obl.rng 180

execute store result entity @s Rotation[0] float 1 run scoreboard players get randomizer obl.rng

# Get random pitch
scoreboard players set randomizer obl.rng.range 180
function oblivion:rng
scoreboard players remove randomizer obl.rng 90

execute store result entity @s Rotation[1] float 1 run scoreboard players get randomizer obl.rng