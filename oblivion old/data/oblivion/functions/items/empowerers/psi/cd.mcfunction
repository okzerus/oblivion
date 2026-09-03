execute unless score @s obl.cd.emp.psi matches 1.. run scoreboard players set @s obl.used.emp.psi 1
execute unless score @s obl.cd.emp.psi matches 1.. run tellraw @s [{"text":"[Древний символ, Пси - Усилитель откатывается!]","color":"dark_purple"},{"text":" (2:30)","color":"red"}]

scoreboard players add @s obl.cd.emp.psi 1

execute if score @s obl.cd.emp.psi matches 1800 run scoreboard players remove @s[tag=obl.empowered.psi] obl.stackable.resistance 25
execute if score @s obl.cd.emp.psi matches 1800 run tag @s remove obl.empowered.psi
execute if score @s obl.cd.emp.psi matches 1800 if entity @s[tag=obl.empowered.four_symbols] run function oblivion:items/empowerers/four_symbols/deactivate
execute if score @s obl.cd.emp.psi matches 3000.. run function oblivion:items/empowerers/psi/ready