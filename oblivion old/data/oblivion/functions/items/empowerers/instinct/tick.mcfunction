particle dust 0.4 0.4 1 0.5 ~ ~1 ~ 3 3 3 0 1 normal

execute at @e[type=minecraft:arrow,nbt=!{inGround:1b},tag=!obl.ignores_instinct,limit=1,sort=nearest,distance=..5] run function oblivion:items/empowerers/instinct/arrow_check
tag @e[type=minecraft:arrow,tag=obl.ignores_instinct,limit=1,sort=nearest,distance=5.1..7] remove obl.ignores_instinct