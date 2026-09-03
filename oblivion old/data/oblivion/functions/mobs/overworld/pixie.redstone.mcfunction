###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/pixie/redstone",Silent:1b,CustomName:'[{"text":"Пикси"}]',Health:20,Tags:["obl.mob","obl.mob.custom_ability","obl.pixie","obl.pixie.redstone"],Attributes:[{Name:"generic.max_health",Base:20F}]}

###   M O D I F Y
effect give @s invisibility infinite 0 true

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Пикси (Редстоун) обнаружена поблизости!","color":"green"}
playsound minecraft:entity.rabbit.hurt hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked