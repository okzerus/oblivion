#Detect fire damage on mobs within 16 blocks
# 1. For every entity, compare health
execute as @e run function obl:check_health

# 2. For players, check if they were hurt AND are on fire
execute as @e[type=!player] at @s if score @s health_current < @s health_old run function obl:calculate_burn
execute as @e[type=!player] at @s if score @s health_current = @s health_old run scoreboard players set @s scorchfield_damage_taken 0

# 3. countdown
execute as @a at @s run function obl:check_fire_damage
execute as @a at @s run scoreboard players operation @s fire_damage_total_old = @s fire_damage_total 
execute as @a at @s if score @s fire_damage_countdown > @s zero run function obl:scorchfield_countdown

#visuals

execute as @a at @s run function obl:scorchfield_visual

