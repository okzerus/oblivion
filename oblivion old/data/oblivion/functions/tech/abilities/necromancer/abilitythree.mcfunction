execute if score @s abilities matches 200 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 200..220 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 3
execute if score @s abilities matches 200..220 run particle minecraft:dust 1 0 0 1 ~ ~4 ~ 0 3 0 0 10
execute if score @s abilities matches 200..220 run tp @s ~ ~ ~ ~ -90
execute if score @s abilities matches 200 run data merge entity @s {NoAI:1b}

execute if score @s abilities matches 220 at @s run function oblivion:tech/bloodmoonlightning
execute if score @s abilities matches 220 at @s run particle dust 0.6 0 0 4 ~ ~6.3 ~ 1.2 0 1.2 0 50 force @a
execute if score @s abilities matches 220 at @s run data merge entity @s {NoAI:0b}