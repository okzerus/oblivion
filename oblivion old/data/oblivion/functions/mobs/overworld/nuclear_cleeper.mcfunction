###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/nuclear_creeper",Fuse:50,ExplosionRadius:5,CustomName:'[{"text":"Ядерный крипер"}]',Health:30,Tags:["obl.mob","obl.nuclear_creeper"],Attributes:[{Name:"generic.max_health",Base:30f}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Ядерный крипер обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.creeper.primed hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:entity.creeper.hurt hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked



