execute if score @s abilities matches 600 run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 600 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 600 run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if score @s abilities matches 600..620 run particle dust 1 1 0 1 ^ ^1.7 ^0.3 0.2 0.2 0.2 0 10 force
execute if score @s abilities matches 600..620 run tp @s ~ ~ ~ facing entity @p feet




execute if score @s abilities matches 620 run execute anchored eyes positioned ^ ^ ^.3 run function oblivion:tech/raycast/hunger
execute if score @s abilities matches 620 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 620 run data merge entity @s {NoAI:0b,Invulnerable:0b}