scoreboard players add @s obl.villager.harvest.forward 1
function oblivion:tech/raycast/villager_harvest.up
scoreboard players set @s obl.villager.harvest.up 0
execute unless score @s obl.villager.harvest.forward matches 31.. positioned ^ ^ ^1 run function oblivion:tech/raycast/villager_harvest.forward

execute if score #wheat_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/wheat
execute if score #beetroot_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/beetroot
execute if score #carrot_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/carrot
execute if score #potato_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/potato
execute if score #cocoa_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/cocoa
execute if score #glow_berry_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/glow_berry
execute if score #melon_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/melon
execute if score #pumpkin_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/pumpkin
execute if score #berry_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/sweet_berry
execute if score #vine_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/vine
execute if score #cactus_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/cactus
execute if score #sugar_cane_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/sugar_cane
execute if score #bamboo_count oblivion matches 1.. at @e[type=villager,tag=obl.villager.profession.farmer,tag=obl.temp.harvesting] run function oblivion:qol/villagers/harvest/bamboo

execute if score @s obl.villager.harvest.forward matches 31.. run kill @s