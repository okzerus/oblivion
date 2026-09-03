particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 0.1
playsound minecraft:entity.vex.charge player @a ~ ~ ~ 1 0.1
effect give @s blindness 1 0 true
tag @s remove obl.good_enchantment
tag @s add obl.bad_enchantment
tag @s add obl.enchanted
xp add @s -500 points

title @s times 10 50 20
title @s title {"text":"Неудача!","color":"dark_red"}
title @s subtitle {"text":"Вы получили плохое зачарование!","color":"red"}
title @s actionbar ""

scoreboard players remove @s obl.stackable.luck 100
scoreboard players remove @s obl.stackable.health_boost 100
scoreboard players remove @s obl.stackable.jump_boost 75
scoreboard players remove @s obl.stackable.speed 75
scoreboard players remove @s obl.stackable.strength 75
scoreboard players remove @s obl.stackable.haste 75
scoreboard players remove @s obl.stackable.resistance 25

tag @s remove obl.player_enchanting.process
tag @s remove obl.player_enchanting.preparing