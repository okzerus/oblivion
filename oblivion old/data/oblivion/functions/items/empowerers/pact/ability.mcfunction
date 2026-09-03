execute unless score @s obl.used.emp.pact matches 1 run scoreboard players add @s obl.process.emp.pact 1

execute if score @s obl.process.emp.pact matches 1 run playsound minecraft:item.book.page_turn hostile @a ~ ~ ~ 1 1
execute if score @s obl.process.emp.pact matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.pact matches 1 run particle minecraft:dust 0.3 1 0.3 1 ~ ~.5 ~ 0.3 0.6 0.3 0 10 normal
execute if score @s obl.process.emp.pact matches 1 run effect give @s slowness 1 2 true

execute if score @s obl.process.emp.pact matches 15 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 1
execute if score @s obl.process.emp.pact matches 15 run playsound minecraft:item.book.page_turn hostile @a ~ ~ ~ 1 1
execute if score @s obl.process.emp.pact matches 15 run playsound minecraft:entity.hoglin.converted_to_zombified hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.pact matches 15 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.pact matches 15 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.pact matches 15 run particle minecraft:dust 0.3 1 0.3 1 ~ ~.5 ~ 0.3 0.6 0.3 0 30 normal
execute if score @s obl.process.emp.pact matches 15 run tag @s add obl.infinite_curse
execute if score @s obl.process.emp.pact matches 15 run tag @s add obl.empowered.pact
execute if score @s obl.process.emp.pact matches 15 run effect clear @s slowness
execute if score @s obl.process.emp.pact matches 15 run tag @s remove obl.has_effect.slowness
execute if score @s obl.process.emp.pact matches 15 run function oblivion:items/empowerers/pact/random_debuff
execute if score @s obl.process.emp.pact matches 15 run function oblivion:tech/curse_enabled

execute if score @s obl.process.emp.pact matches 15.. run function oblivion:items/empowerers/pact/cd