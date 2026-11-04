tag @s remove obl.effect.scorch
scoreboard players reset @s obl.effect.scorch.tick
scoreboard players reset @s obl.effect.scorch.interval
scoreboard players reset @s obl.effect.scorch.potency
scoreboard players reset @s obl.effect.scorch.intensity

execute if score #no_announcement obl matches 1 run return 0

playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.8 1.2

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"ОЖОГ ПРОШЁЛ!","italic":true,"color":"#eb5721"}

scoreboard players reset #no_announcement obl