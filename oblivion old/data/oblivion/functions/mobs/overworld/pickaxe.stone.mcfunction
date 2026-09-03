###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/pickaxe.stone",IsBaby:0,DrownedConversionTime:99999,CustomName:'[{"text":"Летающая кирка"}]',Health:20,Silent:1b,Tags:["obl.cantbleed","obl.mob","obl.pickaxe","obl.pickaxe.stone"],HandDropChances:[0.1f,0.1f],Attributes:[{Name:"generic.knockback_resistance",Base:0.5f},{Name:"generic.max_health",Base:20f}]}

###   M O D I F Y
effect give @s invisibility infinite 0 true
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with stone_pickaxe
item replace entity @s weapon.offhand with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Летающая кирка (Камень) обнаружена поблизости!","color":"green"}
playsound minecraft:block.enchantment_table.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.1 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked