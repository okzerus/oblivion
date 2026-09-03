###   S P A W N
data merge entity @s {Tags:["obl.mob","obl.wither_skeleton.bow"],ArmorDropChances:[0F,0F,0F,0.0f],HandDropChances:[0.1f,0f]}

###   M O D I F Y
item replace entity @s weapon.mainhand with bow

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Визер-скелет (Лук) обнаружен поблизости!","color":"green"}
playsound minecraft:entity.wither_skeleton.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked