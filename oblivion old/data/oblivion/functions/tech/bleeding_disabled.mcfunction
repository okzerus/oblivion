tag @s remove obl.bleeding
tag @s remove obl.honey_bleeding

playsound minecraft:entity.generic.drink hostile @s ~ ~ ~ 1 1.2

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"КРОВОТЕЧЕНИЕ ОСТАНОВЛЕНО!","italic":true,"color":"#fd1b2a"}

effect give @s blindness 1 0 true

scoreboard players set @s obl.bleeding 0
scoreboard players set @s obl.bleeding.interval 0
scoreboard players set @s obl.bleeding.power 0