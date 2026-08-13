#Runs the countdown to reduce scorchfield

#Countdown
execute if score @s fire_damage_countdown matches 2.. run scoreboard players remove @s fire_damage_countdown 1
#Removes scorchfield
execute if score @s fire_damage_countdown matches 1 if score @s fire_damage_total matches 1.. run scoreboard players remove @s fire_damage_total 1