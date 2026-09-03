execute at @s unless block ~ ~2 ~ air run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0.1
execute at @s unless block ~ ~2 ~ air run tp ~ ~10 ~
scoreboard players add @s abilities 1
scoreboard players set nethermothronalive oblivion 1

execute if score @s abilities matches 40..50 at @s run function oblivion:tech/abilities/nethermothronabilities/abilityone
execute if score @s abilities matches 80.. at @s run function oblivion:tech/abilities/nethermothronabilities/abilitytwo

# Bossbar
execute at @s run bossbar set nethermothron players @a[distance=..50]
execute store result bossbar nethermothron value run data get entity @e[tag=nethermothron,limit=1] Health

# Boost

scoreboard players set @s playercount 0
execute at @a[distance=..50] run scoreboard players add @s playercount 1

execute if score @s playercount matches 2 run effect give @s resistance 10 0 true
execute if score @s playercount matches 2 run effect give @s strength 10 1 true
execute if score @s playercount matches 3 run effect give @s resistance 10 1 true
execute if score @s playercount matches 3 run effect give @s strength 10 3 true
execute if score @s playercount matches 4 run effect give @s resistance 10 2 true
execute if score @s playercount matches 4 run effect give @s strength 10 5 true
execute if score @s playercount matches 5 run effect give @s resistance 10 2 true
execute if score @s playercount matches 5 run effect give @s strength 10 7 true