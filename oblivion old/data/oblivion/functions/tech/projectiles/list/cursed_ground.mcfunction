###   P A R T I C L E S
particle dust 0.4 1 0.4 1 ^ ^ ^ 0.2 0.2 0.2 0.01 1
particle dust 0.4 1 0.4 1 ^ ^ ^-.30 0.2 0.2 0.2 0.01 1
particle dust 0.4 1 0.4 1 ^ ^ ^-.60 0.2 0.2 0.2 0.01 1
particle dust 0.4 1 0.4 1 ^ ^ ^-.90 0.2 0.2 0.2 0.01 1
particle block dirt ^ ^ ^ 0.1 0.1 0.1 0.01 3
particle block dirt ^ ^ ^-.30 0.1 0.1 0.1 0.01 3
particle block dirt ^ ^ ^-.60 0.1 0.1 0.1 0.01 3
particle block dirt ^ ^ ^-.90 0.1 0.1 0.1 0.01 3
playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 0.5 0.7
playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.5 0.7


###   M O V E   U P   /   D O W N
scoreboard players set #modify_height oblivion 0
execute if block ^ ^ ^0.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 1
execute if score #modify_height oblivion matches 0 positioned ~ ~1 ~ if block ^ ^ ^.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 2
execute if score #modify_height oblivion matches 0 positioned ~ ~2 ~ if block ^ ^ ^.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 3
execute if score #modify_height oblivion matches 1 positioned ~ ~-1 ~ if block ^ ^ ^.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 4
execute if score #modify_height oblivion matches 4 positioned ~ ~-2 ~ if block ^ ^ ^.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 5

execute if score #modify_height oblivion matches 2..3 unless block ~ ~1 ~ #oblivion:non_solid run scoreboard players set #modify_height oblivion 0
execute if score #modify_height oblivion matches 4..5 positioned ~ ~-3 ~ if block ^ ^ ^.9 #oblivion:non_solid run scoreboard players set #modify_height oblivion 0

execute if score #modify_height oblivion matches 0 run kill @s[type=marker]
execute if score #modify_height oblivion matches 1 run tp @s ^ ^ ^0.9
execute if score #modify_height oblivion matches 2 positioned ~ ~1 ~ run tp @s ^ ^ ^.9
execute if score #modify_height oblivion matches 3 positioned ~ ~2 ~ run tp @s ^ ^ ^.9
execute if score #modify_height oblivion matches 4 positioned ~ ~-1 ~ run tp @s ^ ^ ^.9
execute if score #modify_height oblivion matches 5 positioned ~ ~-2 ~ run tp @s ^ ^ ^.9


###   H I T   E N T I T Y
tag @s add obl.temp.projectile_hit_check
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.dont_move] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest,tag=!obl.invulnerable,predicate=!oblivion:matching_score,distance=...85] at @s as @e[type=marker,tag=obl.temp.projectile_hit_check,limit=1] run function oblivion:tech/projectiles/hit/cursed_ground
tag @s remove obl.temp.projectile_hit_check