###   A N N O U N C E M E N T
tellraw @a [{"text":"Рождесвенский дух покинул нас..","italic":true,"color":"aqua"},{"text":"\n"}]

###   F U N C T I O N
execute as @a at @s if dimension overworld run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10 0.1
scoreboard players set xmas_spirit.escaped oblivion 0
scoreboard players set xmas_spirit.days oblivion 0