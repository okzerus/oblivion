execute unless score @s obl.dolphins_pearl.charge matches 151.. run scoreboard players add @s obl.dolphins_pearl.charge 1

execute if score @s obl.dolphins_pearl.charge matches 1..19 run title @s actionbar [{"text":"\u2693 \u2693 \u2693 \u2693 \u2693 \u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 20..39 run title @s actionbar [{"text":"\u2693 ","color":"#cad2e9"},{"text":"\u2693 \u2693 \u2693 \u2693 \u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 40..59 run title @s actionbar [{"text":"\u2693 \u2693 ","color":"#cad2e9"},{"text":"\u2693 \u2693 \u2693 \u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 60..79 run title @s actionbar [{"text":"\u2693 \u2693 \u2693 ","color":"#cad2e9"},{"text":"\u2693 \u2693 \u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 80..99 run title @s actionbar [{"text":"\u2693 \u2693 \u2693 \u2693 ","color":"#cad2e9"},{"text":"\u2693 \u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 100..119 run title @s actionbar [{"text":"\u2693 \u2693 \u2693 \u2693 \u2693 ","color":"#cad2e9"},{"text":"\u2693 \u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 120..139 run title @s actionbar [{"text":"\u2693 \u2693 \u2693 \u2693 \u2693 \u2693 ","color":"#cad2e9"},{"text":"\u2693","color":"#607099"}]
execute if score @s obl.dolphins_pearl.charge matches 140.. run title @s actionbar [{"text":"\u2693 \u2693 \u2693 \u2693 \u2693 \u2693 \u2693","color":"#cad2e9"}]

execute if score @s obl.dolphins_pearl.charge matches 140.. run particle dolphin ~ ~1 ~ 0.3 0.6 0.3 0 2 normal
execute if score @s obl.dolphins_pearl.charge matches 140.. run effect give @s minecraft:dolphins_grace 1 0 false
execute if score @s obl.dolphins_pearl.charge matches 140 run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.75
execute if score @s obl.dolphins_pearl.charge matches 140 run playsound minecraft:item.trident.riptide_3 player @s ~ ~ ~ 1 1
execute if score @s obl.dolphins_pearl.charge matches 140 run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.5
execute if score @s obl.dolphins_pearl.charge matches 140 run effect give @s minecraft:speed 1 2 true
execute if score @s obl.dolphins_pearl.charge matches 140 run tag @s add obl.empowered.dolphins_pearl
execute if score @s obl.dolphins_pearl.charge matches 150 run effect clear @s minecraft:speed

execute if score @s obl.dolphins_pearl.charge matches 1.. unless biome ~ ~ ~ #oblivion:oceans run function oblivion:items/accs/dolphins_pearl.remove
execute if score @s obl.dolphins_pearl.charge matches 1.. anchored eyes positioned ^ ^ ^ unless predicate oblivion:in_water run function oblivion:items/accs/dolphins_pearl.remove