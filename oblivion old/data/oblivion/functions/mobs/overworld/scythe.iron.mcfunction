###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/scythe.iron",IsBaby:0,CustomName:'[{"text":"Разящий зомби"}]',Health:20,Tags:["obl.mob","obl.scythe.iron","obl.scythe"],Attributes:[{Name:"generic.attack_damage",Base:1f},{Name:"generic.max_health",Base:20f}],HandDropChances:[0.10f]}

###   M O D I F Y
item replace entity @s armor.head with iron_helmet
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with iron_hoe
item replace entity @s weapon.offhand with air
item modify entity @s weapon.mainhand oblivion:scythe_iron

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Разящий зомби (Железо) обнаружен поблизости!","color":"green"}
playsound minecraft:entity.player.attack.sweep hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.8 0.1
playsound minecraft:entity.zombie.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.8 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked