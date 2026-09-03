###   S P A W N
summon minecraft:vex ~ ~.7 ~ {DeathLootTable:"oblivion:mobs/nether/bastion_soul",PersistenceRequired:1b,Silent:1b,CustomName:'[{"text":"Душа Бастиона","color":"red"}]',Health:8,Tags:["obl.mob","obl.bastion_soul","obl.checked"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:3f},{Name:"generic.max_health",Base:8F}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Душа Бастиона обнаружен поблизости!","color":"green"}
playsound minecraft:entity.vex.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked