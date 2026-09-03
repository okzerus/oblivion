execute unless score @s obl.count.emp.instinct matches 30.. run scoreboard players add @s obl.stackable.speed 10
execute unless score @s obl.count.emp.instinct matches 30.. run scoreboard players add @s obl.count.emp.instinct 1

scoreboard players add @s obl.music.emp.instinct 1
execute if score @s obl.music.emp.instinct matches 9.. run scoreboard players set @s obl.music.emp.instinct 1
execute if score @s obl.music.emp.instinct matches 1 run playsound oblivion:misc.super_instinct.1 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 2 run playsound oblivion:misc.super_instinct.2 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 3 run playsound oblivion:misc.super_instinct.3 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 4 run playsound oblivion:misc.super_instinct.4 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 5 run playsound oblivion:misc.super_instinct.5 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 6 run playsound oblivion:misc.super_instinct.6 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 7 run playsound oblivion:misc.super_instinct.7 hostile @a ~ ~ ~ 0.5 1
execute if score @s obl.music.emp.instinct matches 8 run playsound oblivion:misc.super_instinct.8 hostile @a ~ ~ ~ 0.5 1

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1.8
particle minecraft:sweep_attack ~ ~.3 ~ 0 0 0 0 1 normal
particle item arrow ~ ~.3 ~ 0 0 0 0.1 15 normal
particle dust 0.4 0.4 1 0.5 ~ ~.3 ~ 0.1 0.1 0.1 0 10 normal
playsound minecraft:entity.arrow.hit hostile @a ~ ~ ~ 1 1.7

kill @e[type=arrow,sort=nearest,limit=1]