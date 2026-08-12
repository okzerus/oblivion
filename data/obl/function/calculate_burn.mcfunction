# Calculate damage: damage = health_old - health_current
scoreboard players operation @s scorchfield_damage_taken = @s health_old
scoreboard players operation @s scorchfield_damage_taken -= @s health_current

# Check if they are on fire
execute if predicate obl:on_fire run scoreboard players operation @a[distance=..15] fire_damage_total += @s scorchfield_damage_taken


