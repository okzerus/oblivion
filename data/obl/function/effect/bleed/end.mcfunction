tag @s remove obl.effect.bleed
scoreboard players reset @s obl.effect.bleed.tick
scoreboard players reset @s obl.effect.bleed.interval
scoreboard players reset @s obl.effect.bleed.intensity
scoreboard players reset @s obl.effect.bleed.potency

execute if score #no_announcement obl matches 1 run return 0

playsound minecraft:entity.generic.drink hostile @s ~ ~ ~ 1 1.2

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"КРОВОТЕЧЕНИЕ ОСТАНОВЛЕНО!","italic":true,"color":"#fd1b2a"}

effect give @s blindness 1 9 true
scoreboard players reset #no_announcement obl