###   S P A W N
summon spider ~ ~ ~ {DeathLootTable:"oblivion:mobs/minibosses/spider_mother",PersistenceRequired:1b,Glowing:1b,CustomName:'[{"text":"Паучиха","color":"red"}]',CustomNameVisible:1b,Health:200,Tags:["obl.miniboss","obl.mob","obl.mob.custom_ability","obl.mother","obl.checked"],Attributes:[{Name:"generic.attack_damage",Base:12f},{Name:"generic.movement_speed",Base:0.24f},{Name:"generic.knockback_resistance",Base:0.5f},{Name:"generic.max_health",Base:200f}],Passengers:[{id:cave_spider,Health:20,Attributes:[{Name:"generic.max_health",Base:20f}],PersistenceRequired:1b}]}

###   N O T I F I C A T I O N
tellraw @a[distance=..100] {"text":"Паучиха пробудилась где-то поблизости!","color":"red"}
playsound minecraft:entity.spider.ambient hostile @a[distance=..100] ~ ~ ~ 1 0.1 0.1
playsound minecraft:entity.wither.spawn hostile @a[distance=..100] ~ ~ ~ 1 1.4 0.1

###   C L E A N U P
tp @s ~ -256 ~
kill @s