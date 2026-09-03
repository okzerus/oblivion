execute unless score @s obl.cd.emp.pact matches 1.. run scoreboard players set @s obl.used.emp.pact 1
execute unless score @s obl.cd.emp.pact matches 1.. run tellraw @s [{"text":"[Проклятый пакт - Усилитель откатывается!]","color":"dark_purple"},{"text":" (10:00)","color":"red"}]

scoreboard players add @s obl.cd.emp.pact 1

execute if score @s obl.cd.emp.pact matches 6000 if entity @s[tag=obl.infinite_curse,tag=obl.cursed] run function oblivion:items/empowerers/pact/buff
execute if score @s obl.cd.emp.pact matches 9600 run scoreboard players remove @s[tag=obl.empowered.pact] obl.stackable.haste 125
execute if score @s obl.cd.emp.pact matches 9600 run scoreboard players remove @s[tag=obl.empowered.pact] obl.stackable.speed 125
execute if score @s obl.cd.emp.pact matches 9600 run scoreboard players remove @s[tag=obl.empowered.pact] obl.stackable.strength 125
execute if score @s obl.cd.emp.pact matches 9600 run scoreboard players remove @s[tag=obl.empowered.pact] obl.stackable.resistance 75
execute if score @s obl.cd.emp.pact matches 9600 run tag @s remove obl.empowered.pact
execute if score @s obl.cd.emp.pact matches 12000.. run function oblivion:items/empowerers/pact/ready