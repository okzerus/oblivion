###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/anomaly.snow",CustomName:'[{"text":"Снежная аномалия"}]',Health:40,Silent:1b,Tags:["obl.cantbleed","obl.mob","obl.mob.custom_ability","obl.anomaly.snow","obl.anomaly"],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.knockback_resistance",Base:10f},{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.max_health",Base:40f}]}

###   M O D I F Y
effect give @s invisibility infinite 0 true
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Снежная аномалия обнаружена поблизости!","color":"dark_green"}
playsound minecraft:entity.evoker.prepare_attack master @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.4 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked