scoreboard players add @s infection 1

execute if entity @s[type=player] at @e[distance=..10,limit=3,tag=!obl.infected,tag=!obl.curingtick,tag=!pixie,tag=!ragezombie,tag=!obl.virusimmuny,type=#oblivion:canbleed] run scoreboard players add @s infectedcount 1
execute as @e[distance=..10,limit=3,tag=!obl.infected,tag=!obl.curingtick,tag=!pixie,tag=!ragezombie,tag=!obl.virusimmuny,type=#oblivion:canbleed] at @s run function oblivion:tech/virus/infected
execute if score @s[type=player] infectedcount matches 30.. run advancement grant @s only oblivion:advancements/items/virusinfectothers
execute as @s at @s if score @s infection matches 40 run function oblivion:tech/virus/clear

execute as @s at @s if entity @e[tag=pixie,distance=..25] run function oblivion:tech/virus/pixiecure