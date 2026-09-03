execute unless score @s obl.cd.emp.epsilon matches 1.. run scoreboard players set @s obl.used.emp.epsilon 1
execute unless score @s obl.cd.emp.epsilon matches 1.. run tellraw @s [{"text":"[Древний символ, Эпсилон - Усилитель откатывается!]","color":"dark_purple"},{"text":" (2:30)","color":"red"}]

scoreboard players add @s obl.cd.emp.epsilon 1

execute if score @s obl.cd.emp.epsilon matches 1800 run scoreboard players remove @s[tag=obl.empowered.epsilon] obl.stackable.speed 100
execute if score @s obl.cd.emp.epsilon matches 1800 run tag @s remove obl.empowered.epsilon
execute if score @s obl.cd.emp.epsilon matches 1800 if entity @s[tag=obl.empowered.four_symbols] run function oblivion:items/empowerers/four_symbols/deactivate
execute if score @s obl.cd.emp.epsilon matches 3000.. run function oblivion:items/empowerers/epsilon/ready