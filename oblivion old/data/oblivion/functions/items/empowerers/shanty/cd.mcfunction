execute unless score @s obl.cd.emp.shanty matches 1.. run scoreboard players set @s obl.used.emp.shanty 1
execute unless score @s obl.cd.emp.shanty matches 1.. run tellraw @s [{"text":"[Пиратские шанти - Усилитель откатывается!]","color":"dark_purple"},{"text":" (5:00)","color":"red"}]

scoreboard players add @s obl.cd.emp.shanty 1

execute if score @s obl.cd.emp.shanty matches 3600 run scoreboard players remove @s[tag=obl.empowered.shanty] obl.stackable.resistance 50
execute if score @s obl.cd.emp.shanty matches 3600 run tag @s remove obl.empowered.shanty
execute if score @s obl.cd.emp.shanty matches 6000.. run function oblivion:items/empowerers/shanty/ready