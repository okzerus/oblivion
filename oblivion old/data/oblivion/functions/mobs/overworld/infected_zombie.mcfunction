###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/infected_zombie",IsBaby:0,CustomName:'[{"text":"Инфицированный зомби"}]',HandDropChances:[0.00f,0.00f],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Health:40,Silent:1b,Tags:["obl.mob","obl.infected_zombie"],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.follow_range",Base:100f},{Name:"generic.movement_speed",Base:0.275f},{Name:"generic.knockback_resistance",Base:0.3f},{Name:"generic.max_health",Base:40f}]}

###   M O D I F Y
item replace entity @s weapon.mainhand with air
loot replace entity @s weapon.offhand loot oblivion:items/other/potion_virus
item replace entity @s armor.head with spawner
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Инфицированный зомби обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.zombie_villager.cure hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 2 0.1
playsound minecraft:entity.zombie.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.6 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked

