execute if score @s fire_damage_total matches 0.. run particle minecraft:large_smoke ~ ~ ~ 10 3 10 0 10 normal
execute if score @s fire_damage_total matches 100.. run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 15 normal
execute if score @s fire_damage_total matches 200.. run particle minecraft:lava ~ ~ ~ 10 0 10 0 5 normal