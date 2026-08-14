# From on.entity.1t

# Calculates the amount of damage taken, storing in obl.damage_taken
scoreboard players operation @s obl.damage_taken = @s obl.health_old
scoreboard players operation @s obl.damage_taken -= @s obl.health

# Leaves a temp tag indicating that the target did take damage
tag @s add obl.temp.took_damage