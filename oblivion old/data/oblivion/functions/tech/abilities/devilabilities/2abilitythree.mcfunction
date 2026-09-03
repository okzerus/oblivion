execute if score @s abilities matches 300 run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 300..325 run particle minecraft:angry_villager ~ ~4 ~ 0.3 0.1 0.3 0 5
execute if score @s abilities matches 300..325 run particle minecraft:soul ~ ~2 ~ 0.3 1 0.3 0.1 20
execute if score @s abilities matches 300 run tp @s ~ ~ ~ ~ -90
execute if score @s abilities matches 300 run data merge entity @s {Invulnerable:1b,NoAI:1b}

execute if score @s abilities matches 330..350 run function oblivion:tech/abilities/devilabilities/decorarrows

execute if score @s abilities matches 370 at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.6
execute if score @s abilities matches 370 at @s run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 370 at @s run particle minecraft:soul ~ ~0.2 ~ 7 0 7 0.05 500
execute if score @s abilities matches 370 at @s run summon lightning_bolt ~ ~ ~

execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 375 at @s run execute as @a[distance=..30,tag=inbattlewithdevil] at @s run summon armor_stand ~ ~-3 ~ {Tags:["obl.arrowstand","obl.centralarrowstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 380..400 at @s run function oblivion:tech/abilities/devilabilities/skyarrows
execute if score @s abilities matches 410 at @s run kill @e[type=armor_stand,tag=obl.arrowstand]
execute if score @s abilities matches 410 at @s run kill @e[type=armor_stand,tag=obl.centralarrowstand]
execute if score @s abilities matches 430 at @s run kill @e[type=arrow,tag=hell,nbt={inGround:1b}]

execute if score @s abilities matches 430 at @s run data merge entity @s {Invulnerable:0b,NoAI:0b}