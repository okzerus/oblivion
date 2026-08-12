# Store current health into health_old for the next tick comparison
scoreboard players operation @s fire_damage_total = @s fire_damage_total_old

execute if score @s fire_damage_total > @s fire_damage_total_old run scoreboard players set @s fire_damage_countdown 100
execute run scoreboard players remove @s fire_damage_countdown 1

execute if score @s fire_damage_countdown matches 0 run scoreboard players remove @s fire_damage_total 1


execute if score @s fire_damage_total = @s fire_damage_total_old run scoreboard players remove @s fire_damage_countdown 1

diamond_block