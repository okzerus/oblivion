###   Н А   В О С Х О Д Е   С О Л Н Ц А . . .
title @s times 0 40 0
title @s title {"text":""}
title @s subtitle {"text":"На восходе Солнца...","italic":true,"color":"#eb5721"}



###   Э Ф Ф Е К Т Ы
execute unless entity @s[tag=obl.vanilla.slowness] run tag @s add obl.custom_slowness
effect give @s minecraft:slowness 3 1 true
execute unless entity @s[tag=obl.vanilla.darkness] run tag @s add obl.custom_darkness
effect give @s minecraft:darkness 3 9 true
playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 1 0.85
playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.85
playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1 0.85
playsound minecraft:block.fire.ambient player @s ~ ~ ~ 1.5 0.5
playsound minecraft:block.fire.ambient player @s ~ ~ ~ 1.5 0.5
playsound minecraft:block.fire.ambient player @s ~ ~ ~ 1.5 0.5
playsound minecraft:block.campfire.crackle player @s ~ ~ ~ 1.5 0.5
playsound minecraft:block.campfire.crackle player @s ~ ~ ~ 1.5 0.5
playsound minecraft:block.campfire.crackle player @s ~ ~ ~ 1.5 0.5
particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0 30
particle minecraft:small_flame ~ ~1 ~ 0.3 0.6 0.3 0 30
particle minecraft:lava ~ ~.1 ~ 0.3 0.1 0.3 0 15