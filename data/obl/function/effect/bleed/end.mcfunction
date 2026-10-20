tag @s remove obl.effect.bleed

playsound minecraft:entity.generic.drink hostile @s ~ ~ ~ 1 1.2

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"КРОВОТЕЧЕНИЕ ОСТАНОВЛЕНО!","italic":true,"color":"#fd1b2a"}

effect give @s blindness 1 9 true

scoreboard players set @s obl.effect.bleed.tick 0
scoreboard players set @s obl.effect.bleed.interval 0
scoreboard players set @s obl.effect.bleed.intensity 0
scoreboard players set @s obl.effect.bleed.count 0
scoreboard players set @s obl.effect.bleed.potency 0