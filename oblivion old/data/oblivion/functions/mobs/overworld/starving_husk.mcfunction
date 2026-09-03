###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/starving_husk",Silent:1b,IsBaby:0,CustomName:'[{"text":"Голодающий"}]',HandDropChances:[0.00f,0.00f],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Health:30,Tags:["obl.mob","obl.starving_husk"],Attributes:[{Name:"generic.attack_damage",Base:2f},{Name:"generic.follow_range",Base:100f},{Name:"generic.knockback_resistance",Base:0.1f},{Name:"generic.movement_speed",Base:0.26f},{Name:"generic.max_health",Base:30f}]}

###   M O D I F Y
loot replace entity @s weapon.mainhand loot oblivion:items/weapons/tongue_sword
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with spawner
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Голодающий обнаружен поблизости!","color":"green"}
playsound minecraft:entity.player.burp hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.6 0.1
playsound minecraft:entity.zombie.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.6 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked