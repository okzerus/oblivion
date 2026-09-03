# Summon
summon marker ~ ~ ~ {Tags:["obl.temp.black_death_spear"]}

# Get random yaw
scoreboard players set randomizer obl.rng.range 360
function oblivion:rng
scoreboard players remove randomizer obl.rng 180

execute store result entity @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get randomizer obl.rng

# Get random pitch
scoreboard players set randomizer obl.rng.range 90
function oblivion:rng
scoreboard players remove randomizer obl.rng 45

execute store result entity @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get randomizer obl.rng

# Raycast
execute if predicate oblivion:chance/3 as @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest] at @s anchored eyes run tp @s ~ ~ ~ facing entity @r[tag=obl.in_battle.black_death] eyes
execute as @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest] at @s anchored eyes run function oblivion:tech/projectiles/shoot/black_death_spike
kill @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest]