execute if score @s abilities matches 60 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 3 1.6
execute if score @s abilities matches 60 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 3 0.1
execute if score @s abilities matches 60 run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if score @s abilities matches 60 run tag @s remove obl.invulnerable
execute if score @s abilities matches 60..80 run particle dust 1 0 0 1 ^ ^1.7 ^0.3 0.5 0.5 0.5 0 10 force
execute if score @s abilities matches 60..80 run particle flame ^ ^1.7 ^0.3 0.2 0.2 0.2 0.1 10 force
execute if score @s abilities matches 60..80 run tp @s ~ ~ ~ facing entity @p feet




execute if score @s abilities matches 80 run execute anchored eyes positioned ^ ^ ^.3 run function oblivion:tech/raycast/demon
execute if score @s abilities matches 80 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 80 run data merge entity @s {NoAI:0b,Invulnerable:0b}