scoreboard players add @s blood 1

execute if entity @s[type=#oblivion:canbleedparticle] run particle block redstone_block ~ ~1 ~ 0.2 0.2 0.2 0 5 force
execute if entity @s[type=#oblivion:canbleedgreenparticle] run particle block green_wool ~ ~1 ~ 0.2 0.2 0.2 0 5 force
execute if entity @s[type=#oblivion:canbleedpurpleparticle] run particle block purple_wool ~ ~0.5 ~ 0.2 0.4 0.2 0 5 force

execute if score @s blood matches 14 run tag @s remove bleeding3
execute if score @s blood matches 14 run tag @s remove bleeding
execute if score @s blood matches 14 run scoreboard players set @s blood 0