###   S T A R T
execute if score @s abilities matches 120 run playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 0.8 0
execute if score @s abilities matches 120 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.6 0

###   L O O P
execute if score @s abilities matches 120..130 run particle dust 1 0.2 1 0.7 ~ ~ ~ 1 1 1 0 10 force
execute if score @s abilities matches 120..130 run particle block amethyst_block ~ ~ ~ 1 1 1 0 10 force
execute if score @s abilities matches 120..130 run particle end_rod ~ ~.3 ~ 0 0 0 0.2 3 force
execute if score @s abilities matches 131..140 run particle dust 1 0.2 1 0.7 ~ ~ ~ 2 2 2 0 20 force
execute if score @s abilities matches 131..140 run particle block amethyst_block ~ ~ ~ 2 2 2 0 20 force
execute if score @s abilities matches 131..140 run particle end_rod ~ ~.3 ~ 0 0 0 0.4 5 force
execute if score @s abilities matches 141..150 run particle dust 1 0.2 1 0.7 ~ ~ ~ 3 3 3 0 30 force
execute if score @s abilities matches 141..150 run particle block amethyst_block ~ ~ ~ 3 3 3 0 30 force
execute if score @s abilities matches 141..150 run particle end_rod ~ ~.3 ~ 0 0 0 0.6 7 force

###   A B I L I T Y
execute if score @s abilities matches 120 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 125 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.7
execute if score @s abilities matches 130 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 0.9
execute if score @s abilities matches 135 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.1
execute if score @s abilities matches 140 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.3
execute if score @s abilities matches 145 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.5
execute if score @s abilities matches 150 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.2 1.7

execute if score @s abilities matches 150 run particle dust 1 0.7 1 3 ~ ~ ~ 3 3 3 0 500 force
execute if score @s abilities matches 150 run particle end_rod ~ ~.3 ~ 0 0 0 1 400 force
execute if score @s abilities matches 150 run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1.2 0.7
execute if score @s abilities matches 150 run playsound minecraft:entity.player.levelup hostile @a ~ ~ ~ 1.2 0.5
execute if score @s abilities matches 150 run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1.2 1.3
execute if score @s abilities matches 150 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1.2 0.7
execute if score @s abilities matches 150 run effect give @a[distance=..9] mining_fatigue 20 2 false
execute if score @s abilities matches 150 run effect give @a[distance=..9] weakness 20 2 false
execute if score @s abilities matches 150 run effect give @a[distance=..9] slowness 20 2 false
execute if score @s abilities matches 150 run effect give @a[distance=..9] blindness 4 0 false