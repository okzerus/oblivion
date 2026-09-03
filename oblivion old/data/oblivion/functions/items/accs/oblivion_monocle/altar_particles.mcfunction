summon marker ~ ~ ~ {Tags:["obl.temp.y_level"]}
data modify entity @e[type=marker,tag=obl.temp.y_level,limit=1,sort=nearest] Pos[0] set from entity @e[type=marker,tag=obl.altar,limit=1,sort=nearest] Pos[0]
data modify entity @e[type=marker,tag=obl.temp.y_level,limit=1,sort=nearest] Pos[2] set from entity @e[type=marker,tag=obl.altar,limit=1,sort=nearest] Pos[2]
execute at @e[type=marker,tag=obl.temp.y_level,limit=1,sort=nearest] run particle dust 1 0.6 1 0.6 ~ ~ ~ 6 6 6 0 8 force @s
kill @e[type=marker,tag=obl.temp.y_level]