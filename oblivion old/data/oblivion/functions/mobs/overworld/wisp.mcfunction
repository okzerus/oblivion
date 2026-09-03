###   S P A W N
summon minecraft:vex ~ ~ ~ {DeathLootTable:"oblivion:mobs/overworld/wisp",Silent:1b,CustomName:'[{"text":"Одержимый огонёк"}]',Health:20,Tags:["obl.mob","obl.mob.custom_ability","obl.wisp","obl.checked"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.armor",Base:3f},{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:20F}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Одержимый огонёк обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.rabbit.death hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tp @s ~ -256 ~
kill @s