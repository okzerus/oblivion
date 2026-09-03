execute unless score @s obl.cd.emp.sigma matches 1.. run scoreboard players set @s obl.used.emp.sigma 1
execute unless score @s obl.cd.emp.sigma matches 1.. run tellraw @s [{"text":"[Древний символ, Сигма - Усилитель откатывается!]","color":"dark_purple"},{"text":" (2:30)","color":"red"}]

scoreboard players add @s obl.cd.emp.sigma 1

execute if score @s obl.cd.emp.sigma matches 1800 run scoreboard players remove @s[tag=obl.empowered.sigma] obl.stackable.haste 75
execute if score @s obl.cd.emp.sigma matches 1800 run tag @s remove obl.empowered.sigma
execute if score @s obl.cd.emp.sigma matches 1800 if entity @s[tag=obl.empowered.four_symbols] run function oblivion:items/empowerers/four_symbols/deactivate
execute if score @s obl.cd.emp.sigma matches 3000.. run function oblivion:items/empowerers/sigma/ready