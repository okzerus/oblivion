execute if score @s abilities matches 400 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 400 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
execute if score @s abilities matches 400..410 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 10
execute if score @s abilities matches 400 run tp @s ~ ~ ~ ~-90 0
execute if score @s abilities matches 400 run data merge entity @s {NoAI:1b,Invulnerable:1b}

execute if score @s abilities matches 410 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 10
execute if score @s abilities matches 410 run execute unless score @e[tag=devil,limit=1] obl.devilcube matches 1.. run function oblivion:tech/abilities/devilabilities/devilcubes/prepare1
execute if score @s abilities matches 410 run execute if score @e[tag=devil,limit=1] obl.devilcube matches 1 run function oblivion:tech/abilities/devilabilities/devilcubes/prepare2
execute if score @s abilities matches 410 run execute if score @e[tag=devil,limit=1] obl.devilcube matches 2 run function oblivion:tech/abilities/devilabilities/devilcubes/prepare3

execute if score @s abilities matches 413 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 416 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 419 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 422 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 425 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 427 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 430 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 433 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 436 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 439 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 442 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 445 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 447 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 449 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 451 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 453 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 455 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 457 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 458 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 459 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 460 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 461 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 462 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 463 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 464 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 465 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 466 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 467 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 468 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 469 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 470 run function oblivion:tech/abilities/devilabilities/devilcubes/loop
execute if score @s abilities matches 413 run execute as @e[type=magma_cube,sort=random,limit=1,tag=obl.devilcube] run function oblivion:tech/abilities/devilabilities/devilcubes/select
execute if score @s abilities matches 471 run execute as @r at @s run function oblivion:tech/abilities/devilabilities/devilcubes/wronghurt


execute if score @s abilities matches 472 at @s run function oblivion:tech/bloodmoonlightning
execute if score @s abilities matches 472 at @s run particle dust 0.6 0 0 4 ~ ~6.3 ~ 1.2 0 1.2 0 50 force @a
execute if score @s abilities matches 472 at @s run data merge entity @s {NoAI:0b,Invulnerable:0b}