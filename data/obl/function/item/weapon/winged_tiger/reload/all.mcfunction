scoreboard players add @s obl.winged_tiger.reloading 1
execute if score @s obl.winged_tiger.reloading matches 1 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 0.7 1.5
execute unless score @s obl.winged_tiger.reloading matches 20.. run return 0


playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.7 1.7
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.7 1.5
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.7 1.3
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.05 20
scoreboard players set @s obl.winged_tiger.ammo 12
scoreboard players set @s obl.winged_tiger.reloading 0