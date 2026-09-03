###   A R M O R   B R E A K I N G
function oblivion:rng
## VANILLA
execute if predicate oblivion:items/hold.wooden_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/wooden
execute if predicate oblivion:items/hold.stone_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/stone
execute if predicate oblivion:items/hold.iron_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/iron
execute if predicate oblivion:items/hold.golden_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/golden
execute if predicate oblivion:items/hold.diamond_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/diamond
execute if predicate oblivion:items/hold.netherite_scythe as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/netherite
## CUSTOM
execute if predicate oblivion:items/hold.scythe.lucy as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/lucy
execute if predicate oblivion:items/hold.scythe.scythe_of_harvest as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/scythe_of_harvest
execute if predicate oblivion:items/hold.scythe.soul_devourer as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/soul_devourer
execute if predicate oblivion:items/hold.scythe.excythebur as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/excythebur
execute if predicate oblivion:items/hold.scythe.bloodshed as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/bloodshed
execute if predicate oblivion:items/hold.scythe.bee_sting as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run function oblivion:items/scythe/list/custom/bee_sting

###   V I S U A L
function oblivion:items/scythe/visual