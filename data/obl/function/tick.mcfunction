#Detect fire damage on mobs within 16 blocks
# 1. For every entity, compare health
execute as @e run function obl:check_health

# 2. For players, check if they were hurt AND are on fire
execute as @e[type=!player] at @s if score @s health_current < @s health_old run function obl:calculate_burn
execute as @e[type=!player] at @s if score @s health_current = @s health_old run scoreboard players set @s scorchfield_damage_taken 0

# 3. countdown

