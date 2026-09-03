###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/alpha_dolphin",CustomName:'[{"text":"Альфа дельфин"}]',Health:32,PersistenceRequired:1b,Tags:["obl.mob","obl.alpha_dolphin","obl.mob.custom_ability"],Attributes:[{Name:"generic.max_health",Base:32f}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Альфа дельфин обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.dolphin.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 2 0.1
playsound minecraft:item.trident.riptide_1 hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked

