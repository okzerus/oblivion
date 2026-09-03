###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/minibosses/storm",PersistenceRequired:1b,Glowing:1b,Silent:1b,Team:obl.storm,CustomName:'[{"text":"Шторм","color":"red"}]',Health:150,Tags:["obl.miniboss","obl.mob","obl.storm","obl.storm_damager","obl.checked"],Attributes:[{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.attack_damage",Base:12f},{Name:"generic.max_health",Base:150F},{Name:"generic.armor",Base:15F}]}
summon minecraft:blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:obl.storm,CustomName:'[{"text":"Шторм","color":"red"}]',Health:30,Tags:["obl.mob","obl.storm_minion","obl.storm_damager","obl.checked"],Attributes:[{Name:"generic.max_health",Base:30F}]}
summon minecraft:blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:obl.storm,CustomName:'[{"text":"Шторм","color":"red"}]',Health:30,Tags:["obl.mob","obl.storm_minion","obl.storm_damager","obl.checked"],Attributes:[{Name:"generic.max_health",Base:30F}]}
summon minecraft:blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:obl.storm,CustomName:'[{"text":"Шторм","color":"red"}]',Health:30,Tags:["obl.mob","obl.storm_minion","obl.storm_damager","obl.checked"],Attributes:[{Name:"generic.max_health",Base:30F}]}
summon minecraft:blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:obl.storm,CustomName:'[{"text":"Шторм","color":"red"}]',Health:30,Tags:["obl.mob","obl.storm_minion","obl.storm_damager","obl.checked"],Attributes:[{Name:"generic.max_health",Base:30F}]}

###   N O T I F I C A T I O N
tellraw @a[distance=..100] {"text":"Шторм пробудился где-то поблизости!","color":"red"}
playsound minecraft:entity.blaze.ambient hostile @a[distance=..100] ~ ~ ~ 1 0.1 0.1
playsound minecraft:entity.wither.spawn hostile @a[distance=..100] ~ ~ ~ 1 1.4 0.1

###   C L E A N U P
tag @s add obl.checked