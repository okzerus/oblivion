###   S P A W N
summon minecraft:vex ~ ~ ~ {DeathLootTable:"oblivion:mobs/nether/fire_spark",CustomName:'[{"text":"Огненная искра","color":"gold"}]',Health:12,Silent:1b,Tags:["obl.mob","obl.fire_spark","obl.checked"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:12F},{Name:"generic.armor",Base:4F}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Огненная искра обнаружена поблизости!","color":"green"}
playsound minecraft:entity.vex.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked