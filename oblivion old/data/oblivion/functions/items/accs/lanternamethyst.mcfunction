effect give @e[type=#oblivion:agroandplayer,distance=0.2..20] weakness 3 0 false
effect give @e[type=#oblivion:agroandplayer,distance=0.2..20] slowness 3 0 false
effect give @e[type=#oblivion:agroandplayer,distance=0.2..20] mining_fatigue 3 0 false
execute at @e[type=#oblivion:agroandplayer,distance=0.2..20] run particle dust 1 0.2 1 1 ~ ~.2 ~ 0.2 0 0.2 0 30
particle dust 1 0.2 1 1 ~ ~4 ~ 3 4 3 0 50 normal

execute at @e[type=#oblivion:agroandplayer,distance=0.2..20] run scoreboard players add @s obl.cursescount 1
execute if score @s obl.cursescount matches 10000.. run advancement grant @s only oblivion:advancements/accs/other/amethyst