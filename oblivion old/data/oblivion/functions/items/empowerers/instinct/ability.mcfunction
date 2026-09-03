execute unless score @s obl.used.emp.instinct matches 1 run scoreboard players add @s obl.process.emp.instinct 1

execute if score @s obl.process.emp.instinct matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.instinct matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.instinct matches 1 run particle minecraft:dust 0.3 0.3 1 1 ~ ~.5 ~ 0.3 0.6 0.3 0 10 normal
execute if score @s obl.process.emp.instinct matches 1 run effect give @s slowness 1 2 true

execute if score @s obl.process.emp.instinct matches 15 run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.instinct matches 15 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.instinct matches 15 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.instinct matches 15 run playsound oblivion:misc.super_instinct.power_up hostile @a ~ ~ ~ 1 1
execute if score @s obl.process.emp.instinct matches 15 run particle minecraft:dust 0.3 0.3 1 1 ~ ~.5 ~ 0.3 0.6 0.3 0 30 normal
execute if score @s obl.process.emp.instinct matches 15 rotated ~ 0 positioned ~ ~1.4 ~ run function oblivion:items/empowerers/instinct/particles
execute if score @s obl.process.emp.instinct matches 15 run tag @s add obl.empowered.instinct
execute if score @s obl.process.emp.instinct matches 15 run effect clear @s slowness

execute if score @s obl.process.emp.instinct matches 15.. run function oblivion:items/empowerers/instinct/cd