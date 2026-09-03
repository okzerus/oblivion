execute unless score @s obl.cd.cursed_armor_sword matches 1.. run scoreboard players set @s obl.used.cursed_armor_sword 1
execute unless score @s obl.cd.cursed_armor_sword matches 1.. run tellraw @s [{"text":"[Проклятый выброс - Способность откатывается!]","color":"gold"},{"text":" (0:25)","color":"red"}]

scoreboard players add @s obl.cd.cursed_armor_sword 1

execute if score @s obl.cd.cursed_armor_sword matches 500.. run function oblivion:items/abilities/cursed_armor_sword/ready