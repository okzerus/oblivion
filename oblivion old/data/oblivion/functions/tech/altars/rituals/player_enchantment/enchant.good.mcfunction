particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 30
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 0.1
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 0.1
effect give @s night_vision 3 0 true
tag @s remove obl.bad_enchantment
tag @s add obl.good_enchantment
tag @s add obl.enchanted
xp add @s 500 points

title @s times 10 50 20
title @s title {"text":"Удача!","color":"dark_green"}
title @s subtitle {"text":"Вы получили хорошее зачарование!","color":"green"}
title @s actionbar ""

scoreboard players add @s obl.stackable.health_boost 100
scoreboard players add @s obl.stackable.luck 100
scoreboard players add @s obl.stackable.jump_boost 75
scoreboard players add @s obl.stackable.speed 75
scoreboard players add @s obl.stackable.strength 75
scoreboard players add @s obl.stackable.haste 75
scoreboard players add @s obl.stackable.resistance 25

tag @s remove obl.player_enchanting.process
tag @s remove obl.player_enchanting.preparing