scoreboard players add @s smell 1
particle minecraft:falling_dust moss_block ~ ~1 ~ 0.3 0.6 0.3 0 5 normal
particle minecraft:block moss_block ~ ~1 ~ 0.3 0.6 0.3 0 5 normal
particle dust 0.4 0.7 0.4 1 ~ ~1 ~ 0.3 0.6 0.3 0 5 normal
execute if score @s smell matches 20.. run tag @s remove smell
execute if score @s smell matches 20.. run scoreboard players set @s smell 0