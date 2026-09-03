###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/skeleton.weak",CustomName:'[{"text":"Эффектный скелет"}]',Tags:["obl.mob","obl.effect_skeleton.weak","obl.effect_skeleton"],ArmorDropChances:[0F,0F,0F,0.1f],HandDropChances:[0.1f,0f]}

###   M O D I F Y
item replace entity @s armor.head with leather_helmet{display:{color:10921638}}
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with bow
item replace entity @s weapon.offhand with tipped_arrow{CustomPotionColor:10921638,CustomPotionEffects:[{Id:18,Duration:100,Amplifier:0}]} 64

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Эффектный скелет (Слабость) обнаружен поблизости!","color":"green"}
playsound minecraft:entity.skeleton.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked