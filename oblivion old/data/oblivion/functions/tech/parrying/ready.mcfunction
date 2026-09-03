playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.8
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.6
playsound minecraft:item.shield.block player @s ~ ~ ~ 1 2

title @s title ""
title @s subtitle {"text":"МОЖНО ПАРИРОВАТЬ!","italic":true,"color":"green"}
title @s times 0 3 0

scoreboard players set @s obl.parry.spam_cd -1