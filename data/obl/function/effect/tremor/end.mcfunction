tag @s remove obl.effect.tremor
scoreboard players reset @s obl.effect.tremor.tick
scoreboard players reset @s obl.effect.tremor.decay
scoreboard players reset @s obl.effect.tremor.count
scoreboard players reset @s obl.effect.tremor.decay_max
scoreboard players reset #tremor_count obl
scoreboard players reset #tremor_max obl
scoreboard players reset #tremor_final obl

execute if score #no_announcement obl matches 1 run return 0

playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1.7

title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"ТРЕМОР ОСТАНОВЛЕН!","italic":true,"color":"#fbe545"}

scoreboard players reset #no_announcement obl