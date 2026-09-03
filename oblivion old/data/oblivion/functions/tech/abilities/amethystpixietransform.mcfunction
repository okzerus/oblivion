scoreboard players add @s abilities 1

execute if score @s abilities matches 5 run playsound minecraft:entity.rabbit.hurt master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 10 run playsound minecraft:entity.rabbit.hurt master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 15 run playsound minecraft:entity.rabbit.hurt master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 20 run playsound minecraft:entity.rabbit.hurt master @a ~ ~ ~ 1 0.1

execute if score @s abilities matches 25.. unless entity @s[y=50,dy=300] run function oblivion:tech/abilities/amethystpixiespawndefault
execute if score @s abilities matches 25.. if entity @s[y=50,dy=300] run function oblivion:tech/abilities/amethystpixiespawnsurface