tag @s remove obl.cursed

playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 1.5

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"ПРОКЛЯТИЕ СНЯТО!","italic":true,"color":"#74cb71"}

effect give @s blindness 1 0 true

scoreboard players set @s obl.curse 0