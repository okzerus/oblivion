scoreboard players add @s oblivion 1

execute if entity @a[distance=..10] if score @s oblivion matches 40 run function oblivion:tech/abilities/mother/mothereggspawn

execute if entity @a[distance=..10] if score @s oblivion matches 120 run function oblivion:tech/abilities/mother/motherability1

execute if entity @a[distance=..10] if score @s oblivion matches 180 run function oblivion:tech/abilities/mother/motherability2

execute if score @s oblivion matches 180.. run scoreboard players set @s oblivion 0