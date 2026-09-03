###   S P A W N
summon guardian ~ ~ ~ {DeathLootTable:"oblivion:mobs/overworld/wandering_guardian",CustomName:'[{"text":"Блуждающий страж"}]',Health:45,Tags:["obl.mob","obl.wandering_guardian","obl.checked"],Attributes:[{Name:"generic.armor",Base:6f},{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:45F}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Блуждающий страж обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.guardian.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tp @s ~ -256 ~
kill @s