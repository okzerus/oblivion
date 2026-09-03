particle dust 0.7 1 0.7 1.2 ~ ~.4 ~ 0 0 0 0 1 force

scoreboard players add @s[tag=obl.cursed_armor.minion.selected] abilities 1

execute if score @s abilities matches 1 run data merge entity @s {Glowing:1b}
execute if score @s abilities matches 1.. run particle minecraft:electric_spark ~ ~.2 ~ 0.1 0.1 0.1 0.01 1
execute if score @s abilities matches 1.. run particle minecraft:crit ~ ~.2 ~ 0.1 0.1 0.1 0.01 1

execute if score @s abilities matches 79 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 79 run tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes
execute if score @s abilities matches 80 run function oblivion:tech/projectiles/shoot/cursed

execute if score @s abilities matches 90 run data merge entity @s {Glowing:0b,NoAI:0b}
execute if score @s abilities matches 90 run tag @e[type=vex,tag=obl.cursed_armor.minion,tag=!obl.cursed_armor.minion.selected,sort=random,limit=1] add obl.cursed_armor.minion.selected
execute if score @s abilities matches 90 run tag @s remove obl.cursed_armor.minion.selected
execute if score @s abilities matches 90 run scoreboard players set @s abilities 0