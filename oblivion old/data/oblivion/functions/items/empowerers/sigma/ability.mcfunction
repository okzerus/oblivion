execute unless score @s obl.used.emp.sigma matches 1 run scoreboard players add @s obl.process.emp.sigma 1

execute if score @s obl.process.emp.sigma matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.sigma matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.sigma matches 1 run particle minecraft:dust 1 1 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0 10 normal
execute if score @s obl.process.emp.sigma matches 1 run effect give @s slowness 1 2 true

execute if score @s obl.process.emp.sigma matches 15 run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.sigma matches 15 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.sigma matches 15 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.sigma matches 15 run particle minecraft:dust 1 1 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0 30 normal
execute if score @s obl.process.emp.sigma matches 15 rotated ~90 0 run function oblivion:items/empowerers/sigma/particles
execute if score @s obl.process.emp.sigma matches 15 run scoreboard players add @s[tag=!obl.empowered.sigma] obl.stackable.haste 75
execute if score @s obl.process.emp.sigma matches 15 run tag @s add obl.empowered.sigma
execute if score @s obl.process.emp.sigma matches 15 run effect clear @s slowness
execute if score @s obl.process.emp.sigma matches 15 if entity @s[tag=obl.empowered.epsilon,tag=obl.empowered.psi,tag=obl.empowered.sigma,tag=obl.empowered.omega] run function oblivion:items/empowerers/four_symbols/ability

execute if score @s obl.process.emp.sigma matches 15.. run function oblivion:items/empowerers/sigma/cd