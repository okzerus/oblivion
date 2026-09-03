scoreboard players remove @s obl.materializing 1
scoreboard players operation #id.temp obl.id = @s obl.id

execute at @e[type=marker,tag=obl.player_materialization,predicate=oblivion:matching_score,sort=nearest,limit=1] run tp @s ~ ~ ~
execute at @e[type=marker,tag=obl.player_materialization,predicate=oblivion:matching_score,sort=nearest,limit=1] run setblock ~ ~-1 ~ barrier
execute if predicate oblivion:chance/1.5 run function oblivion:tech/player/materializing/strike
effect give @s blindness 2 9 true
effect give @s invisibility 2 9 true
effect give @s resistance 1 9 true
effect give @s weakness 1 9 true
particle minecraft:enchant ~ ~2 ~ 0.3 0.6 0.3 3 2
particle minecraft:end_rod ~ ~0.85 ~ 0.3 0.6 0.3 0 1 normal @a[distance=1..]
particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.1 1
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.25 2


execute if score @s obl.materializing matches 2240 run function oblivion:lines/player/first_join/1.1
execute if score @s obl.materializing matches 2180 run function oblivion:lines/player/first_join/1.2
execute if score @s obl.materializing matches 2125 run function oblivion:lines/player/first_join/1.3
execute if score @s obl.materializing matches 1980 run function oblivion:lines/player/first_join/2
execute if score @s obl.materializing matches 1835 run function oblivion:lines/player/first_join/3
execute if score @s obl.materializing matches 1690 run function oblivion:lines/player/first_join/4
execute if score @s obl.materializing matches 1470 run function oblivion:lines/player/first_join/5
execute if score @s obl.materializing matches 1325 run function oblivion:lines/player/first_join/6
execute if score @s obl.materializing matches 1105 run function oblivion:lines/player/first_join/7
execute if score @s obl.materializing matches 885 run function oblivion:lines/player/first_join/8
execute if score @s obl.materializing matches 715 run function oblivion:lines/player/first_join/9
execute if score @s obl.materializing matches 545 run function oblivion:lines/player/first_join/10.1
execute if score @s obl.materializing matches 495 run function oblivion:lines/player/first_join/10.2
execute if score @s obl.materializing matches 395 run function oblivion:lines/player/first_join/10.3
execute if score @s obl.materializing matches 215 run function oblivion:lines/player/first_join/11

execute if score @s obl.materializing matches 120 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 0.5
execute if score @s obl.materializing matches 80 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 0.65
execute if score @s obl.materializing matches 50 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 0.85
execute if score @s obl.materializing matches 30 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.1
execute if score @s obl.materializing matches 20 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.3
execute if score @s obl.materializing matches 10 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.5


execute if score @s obl.materializing matches ..0 run function oblivion:tech/player/materializing/end