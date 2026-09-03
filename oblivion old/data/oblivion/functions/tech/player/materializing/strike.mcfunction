summon marker ~ ~ ~ {Tags:["obl.temp.random_strike"]}
particle flash ~ ~.7 ~ 0 0 0 0 1 normal @a[distance=1..]
particle minecraft:firework ~ ~.7 ~ 0 0.4 0 0.2 15

function oblivion:rng
execute if score randomizer obl.rng matches ..25 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 2
execute if score randomizer obl.rng matches 26..50 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1.8
execute if score randomizer obl.rng matches 51..75 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1.6
execute if score randomizer obl.rng matches 76.. run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1.4

# Get random yaw
scoreboard players set randomizer obl.rng.range 360
function oblivion:rng
scoreboard players remove randomizer obl.rng 180

execute store result entity @e[type=marker,tag=obl.temp.random_strike,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get randomizer obl.rng

# Get random pitch
scoreboard players set randomizer obl.rng.range 90
function oblivion:rng
scoreboard players remove randomizer obl.rng 45
scoreboard players add randomizer obl.rng 20

execute store result entity @e[type=marker,tag=obl.temp.random_strike,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get randomizer obl.rng

scoreboard players set #particle_type oblivion 2
execute as @e[type=marker,tag=obl.temp.random_strike,limit=1,sort=nearest] at @s anchored eyes positioned ~ ~.7 ~ positioned ^ ^ ^.001 run function ofl:start
tp @s[tag=!obl.player.materializing,type=player] @e[type=marker,tag=obl.temp.random_strike,limit=1,sort=nearest]
kill @e[type=marker,tag=obl.temp.random_strike]