tag @s add obl.empowered.cursed_armor.mining_fatigue
tag @s add obl.empowered.cursed_armor
scoreboard players add @s obl.stackable.speed 25
scoreboard players add @s obl.stackable.strength 25
scoreboard players add @s obl.stackable.haste 25
scoreboard players add @s obl.stackable.resistance 10

playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.6 1.7
playsound minecraft:entity.evoker.cast_spell hostile @s ~ ~ ~ 0.6 1.7
particle minecraft:dust 0.4 1 0.4 1 ~ ~1 ~ 0.3 0.4 0.3 0.1 20
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.4 0.3 0.1 20
particle minecraft:enchant ~ ~1 ~ 0.3 0.4 0.3 0.1 20
scoreboard players add @s obl.empowering.cursed_armor 1
title @s actionbar [{"text":"+1","color":"#42ca26"},{"text":" Трансмутатор проклятий: ","color":"#97EE6A"},{"text":"[","color":"#55E737"},{"score":{"name":"@s","objective":"obl.empowering.cursed_armor"},"color":"#97EE6A"},{"text":"]","color":"#55E737"}]