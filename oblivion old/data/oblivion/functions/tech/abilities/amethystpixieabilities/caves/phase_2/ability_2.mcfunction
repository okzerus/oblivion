###   S T A R T
execute if score @s abilities matches 120 run playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 0.8 0
execute if score @s abilities matches 120 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.6 0

###   L O O P
execute if score @s abilities matches 120..126 run particle dust 1 0.2 1 0.7 ~ ~ ~ 1 1 1 0 10 force
execute if score @s abilities matches 120..126 run particle block amethyst_block ~ ~ ~ 1 1 1 0 10 force
execute if score @s abilities matches 120..126 run particle end_rod ~ ~.3 ~ 0 0 0 0.2 3 force
execute if score @s abilities matches 127..131 run particle dust 1 0.2 1 0.7 ~ ~ ~ 2 2 2 0 20 force
execute if score @s abilities matches 127..131 run particle block amethyst_block ~ ~ ~ 2 2 2 0 20 force
execute if score @s abilities matches 127..131 run particle end_rod ~ ~.3 ~ 0 0 0 0.4 5 force
execute if score @s abilities matches 132..137 run particle dust 1 0.2 1 0.7 ~ ~ ~ 5 5 5 0 30 force
execute if score @s abilities matches 132..137 run particle block amethyst_block ~ ~ ~ 5 5 5 0 30 force
execute if score @s abilities matches 132..137 run particle end_rod ~ ~.3 ~ 0 0 0 0.8 7 force

###   A B I L I T Y
execute if score @s abilities matches 120 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 123 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.7
execute if score @s abilities matches 126 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.9
execute if score @s abilities matches 129 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.1
execute if score @s abilities matches 132 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.3
execute if score @s abilities matches 135 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.5
execute if score @s abilities matches 137 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.7

execute if score @s abilities matches 140 run particle dust 1 0.7 1 3 ~ ~ ~ 5 5 5 0 700 force
execute if score @s abilities matches 140 run particle end_rod ~ ~.3 ~ 0 0 0 0.9 200 force
execute if score @s abilities matches 140 run particle end_rod ~ ~.3 ~ 0 0 0 0.6 200 force
execute if score @s abilities matches 140 run particle end_rod ~ ~.3 ~ 0 0 0 0.3 200 force
execute if score @s abilities matches 140 run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 140 run playsound minecraft:entity.player.levelup hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 140 run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1.2 0.7
execute if score @s abilities matches 140 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 140 run effect give @a[distance=..13] mining_fatigue 20 3 false
execute if score @s abilities matches 140 run effect give @a[distance=..13] weakness 20 3 false
execute if score @s abilities matches 140 run effect give @a[distance=..13] slowness 20 2 false
execute if score @s abilities matches 140 run effect give @a[distance=..13] darkness 8 0 false