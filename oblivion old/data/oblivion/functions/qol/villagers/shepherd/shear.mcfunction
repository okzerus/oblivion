data merge entity @s {Sheared:1b}
execute store result score #sheep_color oblivion run data get entity @s Color

execute if score #sheep_color oblivion matches 0 run scoreboard players add #white_wool_count oblivion 1
execute if score #sheep_color oblivion matches 1 run scoreboard players add #orange_wool_count oblivion 1
execute if score #sheep_color oblivion matches 2 run scoreboard players add #magenta_wool_count oblivion 1
execute if score #sheep_color oblivion matches 3 run scoreboard players add #light_blue_wool_count oblivion 1
execute if score #sheep_color oblivion matches 4 run scoreboard players add #yellow_wool_count oblivion 1
execute if score #sheep_color oblivion matches 5 run scoreboard players add #lime_wool_count oblivion 1
execute if score #sheep_color oblivion matches 6 run scoreboard players add #pink_wool_count oblivion 1
execute if score #sheep_color oblivion matches 7 run scoreboard players add #gray_wool_count oblivion 1
execute if score #sheep_color oblivion matches 8 run scoreboard players add #light_gray_wool_count oblivion 1
execute if score #sheep_color oblivion matches 9 run scoreboard players add #cyan_wool_count oblivion 1
execute if score #sheep_color oblivion matches 10 run scoreboard players add #purple_wool_count oblivion 1
execute if score #sheep_color oblivion matches 11 run scoreboard players add #blue_wool oblivion 1
execute if score #sheep_color oblivion matches 12 run scoreboard players add #brown_wool_count oblivion 1
execute if score #sheep_color oblivion matches 13 run scoreboard players add #green_wool_count oblivion 1
execute if score #sheep_color oblivion matches 14 run scoreboard players add #red_wool_count oblivion 1
execute if score #sheep_color oblivion matches 15 run scoreboard players add #black_wool_count oblivion 1

execute if score #sheep_color oblivion matches 0 run particle minecraft:block white_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 1 run particle minecraft:block orange_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 2 run particle minecraft:block magenta_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 3 run particle minecraft:block light_blue_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 4 run particle minecraft:block yellow_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 5 run particle minecraft:block lime_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 6 run particle minecraft:block pink_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 7 run particle minecraft:block gray_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 8 run particle minecraft:block light_gray_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 9 run particle minecraft:block cyan_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 10 run particle minecraft:block purple_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 11 run particle minecraft:block blue_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 12 run particle minecraft:block brown_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 13 run particle minecraft:block green_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 14 run particle minecraft:block red_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30
execute if score #sheep_color oblivion matches 15 run particle minecraft:block black_wool ~ ~.5 ~ 0.3 0.6 0.3 0 30

playsound minecraft:entity.sheep.shear hostile @a ~ ~ ~ 0.5 1
particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 10