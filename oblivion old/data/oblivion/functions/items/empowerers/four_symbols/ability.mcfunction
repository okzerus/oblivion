scoreboard players add @s obl.process.emp.four_symbols 1

execute if score @s obl.process.emp.four_symbols matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.four_symbols matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.four_symbols matches 1 run particle minecraft:dust 1 1 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0 30 normal

execute if score @s obl.process.emp.four_symbols matches 10 run tellraw @s [{"text":"[Дополнительное усиление: Все четыре символа активны!]","color":"light_purple"}]
execute if score @s obl.process.emp.four_symbols matches 10 run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.four_symbols matches 10 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.four_symbols matches 10 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 0.7
execute if score @s obl.process.emp.four_symbols matches 10 run particle minecraft:dust 1 1 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0 70 normal
execute if score @s obl.process.emp.four_symbols matches 10 rotated ~90 0 run function oblivion:items/empowerers/four_symbols/particles

execute if score @s obl.process.emp.four_symbols matches 10 run scoreboard players add @s[tag=!obl.empowered.four_symbols] obl.stackable.speed 175
execute if score @s obl.process.emp.four_symbols matches 10 run scoreboard players add @s[tag=!obl.empowered.four_symbols] obl.stackable.resistance 125
execute if score @s obl.process.emp.four_symbols matches 10 run scoreboard players add @s[tag=!obl.empowered.four_symbols] obl.stackable.haste 100
execute if score @s obl.process.emp.four_symbols matches 10 run scoreboard players add @s[tag=!obl.empowered.four_symbols] obl.stackable.strength 150
execute if score @s obl.process.emp.four_symbols matches 10 run tag @s add obl.empowered.four_symbols

execute if score @s obl.process.emp.four_symbols matches 11 run scoreboard players set @s obl.process.emp.four_symbols 0