# Store current health into health_old for the next tick comparison


execute if score @s fire_damage_countdown > @s zero run scoreboard players remove @s fire_damage_countdown 1

execute if score @s fire_damage_countdown matches 1 run scoreboard players set @s fire_damage_total 0