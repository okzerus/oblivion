scoreboard players add @s obl.villager.grow.forward 1
function oblivion:tech/raycast/villager_grow.up
scoreboard players set @s obl.villager.grow.up 0
execute unless score @s obl.villager.grow.forward matches 31.. positioned ^ ^ ^1 run function oblivion:tech/raycast/villager_grow.forward

execute if score #rose_bush_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.growing] run function oblivion:qol/villagers/grow/rose_bush
execute if score #lilac_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.growing] run function oblivion:qol/villagers/grow/lilac
execute if score #peony_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.growing] run function oblivion:qol/villagers/grow/peony
execute if score #sunflower_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.growing] run function oblivion:qol/villagers/grow/sunflower
execute if score #chorus_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.growing] run function oblivion:qol/villagers/grow/chorus

execute if score @s obl.villager.grow.forward matches 31.. run kill @s