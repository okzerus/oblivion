###   S P A W N
summon zombie ~ ~ ~ {DeathLootTable:"oblivion:mobs/minibosses/gargantuan",IsBaby:0,PersistenceRequired:1b,Glowing:1b,DrownedConversionTime:99999,CustomName:'[{"text":"Гаргантюа","color":"red"}]',CustomNameVisible:1b,Health:300,Tags:["obl.miniboss","obl.mob","obl.mob.custom_ability","obl.gargantuan","obl.checked"],HandDropChances:[0.00f,0.00f],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.attack_damage",Base:16f},{Name:"generic.knockback_resistance",Base:2f},{Name:"minecraft:generic.armor",Base:8f},{Name:"generic.movement_speed",Base:0.19f},{Name:"generic.max_health",Base:300F}],Passengers:[{id:zombie,PersistenceRequired:1b,IsBaby:1,CustomName:'[{"text":"Наездник на Гаргантюа"}]',Health:30,Tags:["obl.mob","obl.gargantuan_passenger","obl.checked"],HandItems:[{id:stone_axe,Count:1},{id:fishing_rod,Count:1}],ArmorItems:[{},{},{},{id:leather_helmet,Count:1}],Attributes:[{Name:"generic.attack_damage",Base:6f},{Name:"generic.max_health",Base:30F}],HandDropChances:[0.00f,0.00f],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f]}]}

###   M O D I F Y
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] weapon.mainhand with iron_shovel{Unbreakable:1b}
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] weapon.offhand with air
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] armor.head with iron_helmet{Unbreakable:1b}
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] armor.chest with air
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] armor.legs with air
item replace entity @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] armor.feet with air

###   N O T I F I C A T I O N
tellraw @a[distance=..100] {"text":"Гаргантюа пробудился где-то поблизости!","color":"red"}
playsound minecraft:entity.zombie.ambient hostile @a[distance=..100] ~ ~ ~ 1 0.1 0.1
playsound minecraft:entity.wither.spawn hostile @a[distance=..100] ~ ~ ~ 1 1.4 0.1

###   C L E A N U P
tag @e[type=zombie,tag=obl.gargantuan,limit=1,sort=nearest,tag=!obl.modified] add obl.modified
tp @s ~ -256 ~
kill @s