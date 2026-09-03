tag @s add obl.temp.reflecting_arrow
execute as @e[type=arrow,limit=1,sort=nearest] on origin run tag @s add obl.temp.arrow_owner
execute if entity @s[tag=obl.temp.arrow_owner,tag=obl.temp.reflecting_arrow] run tag @e[type=arrow,limit=1,sort=nearest] add obl.ignores_instinct

execute at @e[type=minecraft:arrow,limit=1,sort=nearest,tag=!obl.ignores_instinct,distance=...1] run function oblivion:items/empowerers/instinct/arrow
tag @e remove obl.temp.reflecting_arrow
tag @e remove obl.temp.arrow_owner