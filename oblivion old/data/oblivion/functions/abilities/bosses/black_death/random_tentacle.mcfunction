# Summon
summon marker ~ ~ ~ {Tags:["obl.temp.black_death_tentacle"]}

# Get random yaw
scoreboard players set randomizer obl.rng.range 360
function oblivion:rng
scoreboard players remove randomizer obl.rng 180

execute store result entity @e[type=marker,tag=obl.temp.black_death_tentacle,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get randomizer obl.rng

# Get random pitch
scoreboard players set randomizer obl.rng.range 80
function oblivion:rng
scoreboard players remove randomizer obl.rng 40

execute store result entity @e[type=marker,tag=obl.temp.black_death_tentacle,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get randomizer obl.rng

# Raycast
execute as @e[type=marker,tag=obl.temp.black_death_tentacle,limit=1,sort=nearest] at @s anchored eyes run function oblivion:tech/raycast/black_death.fake_tentacle
kill @e[type=marker,tag=obl.temp.black_death_tentacle,limit=1,sort=nearest]