#Detect fire damage on mobs within 16 blocks
# 1. For every entity, compare health
execute as @e run function aqwsde:check_health

# 2. For players, check if they were hurt AND are on fire
execute as @e[type=!player] if score @s health_current < @s health_old run function aqwsde:calculate_burn
execute as @e[type=!player] if score @s health_current = @s health_old run scoreboard players set @s damage_taken 0

# 3. countdown

