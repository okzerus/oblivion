# Yamete Kudasai
summon marker ~ ~ ~ {Tags:["obl.black_death.tentacle","obl.black_death.tentacle.z_plus"]}
execute as @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] at @s run tp @s ~ ~ ~ 0 0



# Store both YAW and PITCH into a scoreboard
execute as @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] run execute store result score @s obl.rotation.yaw run data get entity @s Rotation[0]
execute as @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] run execute store result score @s obl.rotation.pitch run data get entity @s Rotation[1]



### Get random number up to 20, then temporarily store it, then either add/remove the stored number to the current rotation, then modify the entity's rotation from modified score.
### I fucking hate operations lol I'm dumb as fuck but I guess it's a good thing I got it. Even though I'm more than sure that there's a better way?
# Note: function oblivion:rng automatically sets obl.rng.range back to 100 at the end of the file.

# YAW
scoreboard players set randomizer obl.rng.range 60
function oblivion:rng
scoreboard players remove randomizer obl.rng 30

execute store result score @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.yaw -= @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.yaw += @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp

execute store result entity @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] Rotation[0] float 1 run scoreboard players get @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.yaw


# PITCH
scoreboard players set randomizer obl.rng.range 60
function oblivion:rng
scoreboard players remove randomizer obl.rng 30

execute store result score @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp run scoreboard players get randomizer obl.rng

function oblivion:rng
execute if score randomizer obl.rng matches ..50 run scoreboard players operation @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.pitch -= @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp
execute if score randomizer obl.rng matches 51.. run scoreboard players operation @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.pitch += @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.temp

execute store result entity @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] Rotation[1] float 1 run scoreboard players get @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] obl.rotation.pitch

execute as @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] at @s anchored eyes run function oblivion:tech/raycast/black_death.tentacle.check
tag @e[type=marker,tag=obl.black_death.tentacle,limit=1,sort=nearest,tag=!obl.modified] add obl.modified