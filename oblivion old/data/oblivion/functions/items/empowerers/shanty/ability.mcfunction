execute unless score @s obl.used.emp.shanty matches 1 run scoreboard players add @s obl.process.emp.shanty 1

execute if score @s obl.process.emp.shanty matches 1 run playsound minecraft:item.book.page_turn hostile @a ~ ~ ~ 1 1
execute if score @s obl.process.emp.shanty matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.shanty matches 1 run particle minecraft:dust 0.3 0.3 1 1 ~ ~.5 ~ 0.3 0.6 0.3 0 10 normal
execute if score @s obl.process.emp.shanty matches 1 run effect give @s slowness 1 2 true

execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 1.3
execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 1.3
execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.shanty matches 15 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.shanty matches 15 run playsound oblivion:misc.we_shall_sail_together hostile @s ~ ~ ~ 3 1
execute if score @s obl.process.emp.shanty matches 15 run particle minecraft:dust 0.3 0.3 1 1 ~ ~.5 ~ 0.3 0.6 0.3 0 30 normal
execute if score @s obl.process.emp.shanty matches 15 rotated ~90 0 run function oblivion:items/empowerers/shanty/particles
execute if score @s obl.process.emp.shanty matches 15 run scoreboard players add @s[tag=!obl.empowered.shanty] obl.stackable.resistance 50
execute if score @s obl.process.emp.shanty matches 15 run effect give @s minecraft:dolphins_grace 180 0 false
execute if score @s obl.process.emp.shanty matches 15 run tag @s add obl.empowered.shanty
execute if score @s obl.process.emp.shanty matches 15 run effect clear @s slowness

execute if score @s obl.process.emp.shanty matches 15.. run function oblivion:items/empowerers/shanty/cd