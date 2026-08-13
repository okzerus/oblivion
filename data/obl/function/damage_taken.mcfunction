#Calculates the amount of damage taken using health_old and health_current from check_health.mcfunction
scoreboard players operation @s damage_taken = @s health_old
scoreboard players operation @s damage_taken -= @s health_current