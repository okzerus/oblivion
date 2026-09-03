execute if score @s obl.dolphins_pearl.charge matches 140.. run effect clear @s dolphins_grace
execute if score @s obl.dolphins_pearl.charge matches 140.. run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 1.5
execute if score @s obl.dolphins_pearl.charge matches 140.. run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.75
execute if score @s obl.dolphins_pearl.charge matches 140.. run playsound minecraft:item.trident.riptide_3 player @s ~ ~ ~ 1 0.6
scoreboard players set @s obl.dolphins_pearl.charge 0
tag @s remove obl.empowered.dolphins_pearl
title @s actionbar ""