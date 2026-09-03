scoreboard players set #modify_height oblivion 0
execute if block ^ ^ ^0.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 1
execute if score #modify_height oblivion matches 0 positioned ~ ~1 ~ if block ^ ^ ^0.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 2
execute if score #modify_height oblivion matches 0 positioned ~ ~2 ~ if block ^ ^ ^0.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 3
execute if score #modify_height oblivion matches 1 positioned ~ ~-1 ~ if block ^ ^ ^0.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 4
execute if score #modify_height oblivion matches 4 positioned ~ ~-2 ~ if block ^ ^ ^0.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 5

execute if score #modify_height oblivion matches 2..3 unless block ~ ~1 ~ #oblivion:non_solid run scoreboard players set #modify_height oblivion 0
execute if score #modify_height oblivion matches 4..5 positioned ~ ~-3 ~ if block ^ ^ ^.5 #oblivion:non_solid run scoreboard players set #modify_height oblivion 0

execute if score #modify_height oblivion matches 0 run say stop raycast
execute if score #modify_height oblivion matches 1 run tp @s ^ ^ ^0.5
execute if score #modify_height oblivion matches 2 positioned ~ ~1 ~ run tp @s ^ ^ ^0.5
execute if score #modify_height oblivion matches 3 positioned ~ ~2 ~ run tp @s ^ ^ ^0.5
execute if score #modify_height oblivion matches 4 positioned ~ ~-1 ~ run tp @s ^ ^ ^0.5
execute if score #modify_height oblivion matches 5 positioned ~ ~-2 ~ run tp @s ^ ^ ^0.5