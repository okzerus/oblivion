tag @s remove obl.effect.enraged
tag @s remove obl.effect.custom_rage

playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.8

title @s times 0 20 10
title @s title ""
execute store result score @s obl.rng run random roll 1..100
execute if score @s obl.rng matches 1..20 run title @s subtitle {"text":"ЧТО С ЕБАЛОМ, РЕБЯТА!?","italic":true,"color":"#9f050f"}
execute if score @s obl.rng matches 21..40 run title @s subtitle {"text":"ЧТО, ВСЕ ПОЛУЧИЛИ!?","italic":true,"color":"#9f050f"}
execute if score @s obl.rng matches 41..60 run title @s subtitle {"text":"ЛАДНО, ВСЕХ ПРОЩАЮ!","italic":true,"color":"#9f050f"}
execute if score @s obl.rng matches 61..80 run title @s subtitle {"text":"ВСЁ, ПЫЛ ОСТЫЛ!","italic":true,"color":"#9f050f"}
execute if score @s obl.rng matches 81..100 run title @s subtitle {"text":"ЛАДНО, ЗРЯ БЫКАНУЛ!","italic":true,"color":"#9f050f"}

attribute @s attack_damage modifier remove obl.empower.rage
attribute @s jump_strength modifier remove obl.empower.rage
attribute @s movement_speed modifier remove obl.empower.rage

effect give @s minecraft:slowness 3 0

scoreboard players set @s obl.effect.rage 0