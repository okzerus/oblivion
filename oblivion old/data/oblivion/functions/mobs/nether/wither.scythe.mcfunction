###   S P A W N
data merge entity @s {Tags:["obl.mob","obl.wither_skeleton.scythe"],ArmorDropChances:[0F,0F,0F,0.0f],HandDropChances:[0.1f,0f],Attributes:[{Name:"generic.movement_speed",Base:0.265f},{Name:"generic.attack_damage",Base:3f}]}

###   M O D I F Y
item replace entity @s weapon.mainhand with stone_hoe
item modify entity @s weapon.mainhand oblivion:stone_hoe

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Визер-скелет (Коса) обнаружен поблизости!","color":"green"}
playsound minecraft:entity.wither_skeleton.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked