scoreboard players add @s minion 1
particle dust 0.3 0.3 0.3 1 ~ ~1 ~ 0.3 0.6 0.3 0 2
execute if score @s[tag=!necrominion] minion matches 150 run playsound entity.enderman.teleport master @a ~ ~ ~ 0.4 2
execute if score @s[tag=!necrominion] minion matches 150 run playsound entity.wither.shoot master @a ~ ~ ~ 0.4 2
execute if score @s[tag=!necrominion] minion matches 150 run particle minecraft:soul ~ ~.5 ~ 0.3 0.6 0.3 0.1 70 force
execute if score @s[tag=!necrominion] minion matches 150 run tp @s ~ ~-256 ~
execute if score @s[tag=!necrominion] minion matches 150 run kill @s

execute if score @s[tag=necrominion] minion matches 250 run playsound entity.enderman.teleport master @a ~ ~ ~ 0.4 2
execute if score @s[tag=necrominion] minion matches 250 run playsound entity.wither.shoot master @a ~ ~ ~ 0.4 2
execute if score @s[tag=necrominion] minion matches 250 run particle minecraft:soul ~ ~.5 ~ 0.3 0.6 0.3 0.1 70 force
execute if score @s[tag=necrominion] minion matches 250 run tp @s ~ ~-256 ~
execute if score @s[tag=necrominion] minion matches 250 run kill @s