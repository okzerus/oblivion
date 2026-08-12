# Store current health into health_old for the next tick comparison
scoreboard players operation @s health_old = @s health_current

# Update health_current using NBT
execute store result score @s health_current run data get entity @s Health