# Из on.player.1t



###   Э Ф Ф Е К Т Ы
## Частицы и звуки при окончании эффекта.
playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.8 1.2



###   О П О В Е Щ Е Н И Е
## Оповещение игроку на экран при окончании эффекта.
title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"ОЖОГ ПРОШЁЛ!","italic":true,"color":"#eb5721"}



###   К О Н Е Ц
## Убираемся за собой.
tag @s remove obl.effect.debuff.scorch
scoreboard players set @s obl.effect.debuff.scorch.tick 0
scoreboard players set @s obl.effect.debuff.scorch.interval 0
scoreboard players set @s obl.effect.debuff.scorch.strength 0