tag @s remove obl.effect.debuff.scorch

playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.8 1.2

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"ОЖОГ ПРОШЁЛ!","italic":true,"color":"#eb5721"}

scoreboard players set @s obl.effect.debuff.scorch.tick 0
scoreboard players set @s obl.effect.debuff.scorch.interval 0
scoreboard players set @s obl.effect.debuff.scorch.strength 0