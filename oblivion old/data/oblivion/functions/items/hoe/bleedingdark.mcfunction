scoreboard players add @s blood 1

particle block obsidian ~ ~1 ~ 0.2 0.2 0.2 0 5 force


execute if score @s blood matches 9 run tag @s remove bleedingdark
execute if score @s blood matches 9 run tag @s remove bleeding
execute if score @s blood matches 9 run scoreboard players set @s blood 0