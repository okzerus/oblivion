###   S P A W N
summon minecraft:vex ~ ~1.9 ~ {DeathLootTable:"oblivion:mobs/nether/withering_sphere",PersistenceRequired:1b,Silent:1b,CustomName:'[{"text":"Сфера иссушения","color":"red"}]',Health:8,Tags:["obl.mob","obl.withering_sphere","obl.checked"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:3f},{Name:"generic.max_health",Base:8F}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Сфера иссушения обнаружен поблизости!","color":"green"}
playsound minecraft:entity.wither.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.7 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

particle block black_concrete ~ ~1.5 ~ 0.2 0.2 0.2 0 50
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.6 2