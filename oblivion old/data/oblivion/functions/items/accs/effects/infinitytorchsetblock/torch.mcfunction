summon minecraft:leash_knot ~ ~ ~ {Silent:1b,Tags:[torch]}
execute at @e[tag=torch,limit=1,sort=nearest] run particle flame ~ ~.2 ~ 0.1 0.2 0.1 0 30
execute at @e[tag=torch,limit=1,sort=nearest] run setblock ~ ~ ~ torch
execute at @e[tag=torch,limit=1,sort=nearest] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2
execute at @e[tag=torch,limit=1,sort=nearest] run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1
clear @p torch 1
execute as @e[tag=torch,limit=1,sort=nearest] run kill @s