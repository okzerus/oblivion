#Health check and amount of damage taken
execute as @e at @s run function obl:check_health
execute as @e at @s if score @s health_current < @s health_old run function obl:damage_taken
execute as @e at @s if score @s health_current = @s health_old run scoreboard players set @s damage_taken 0

#Scorchfield
execute as @e at @s if predicate obl:on_fire if score @s health_current < @s health_old run scoreboard players operation @a[distance=..15] fire_damage_total += @s damage_taken
execute as @a at @s run function obl:scorchfield/check_fire_damage
execute as @a at @s run scoreboard players operation @s fire_damage_total_old = @s fire_damage_total 
execute as @a at @s run function obl:scorchfield/scorchfield_countdown
execute as @a at @s run function obl:scorchfield/scorchfield_visual




