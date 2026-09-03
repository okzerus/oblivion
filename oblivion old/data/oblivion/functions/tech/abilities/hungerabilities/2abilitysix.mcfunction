execute if score @s abilities matches 500 run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 500 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 500 run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if score @s abilities matches 500..520 run particle dust 1 0 0 1 ^ ^1.7 ^0.3 0.2 0.2 0.2 0 10 force
execute if score @s abilities matches 500..520 run tp @s ~ ~ ~ facing entity @p feet




execute if score @s abilities matches 520 run execute anchored eyes positioned ^ ^ ^.3 run function oblivion:tech/raycast/debuffs
execute if score @s abilities matches 520 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 520 run data merge entity @s {NoAI:0b,Invulnerable:0b}