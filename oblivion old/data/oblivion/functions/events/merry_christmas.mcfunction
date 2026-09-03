###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"С Рождеством!","italic":true,"color":"aqua"},{"text":"\n"}]
execute if entity @a[scores={obl.difficulty=5..}] run tellraw @a ["",{"text":"Вы чувствуете прилив Рождественского настроения!","color":"aqua","italic":"true"},{"text":"\n"},{"text":"Кажется, этой ночью будет весело!","color":"aqua","italic":"true"},{"text":"\n"}]

###   E F F E C T S
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5 1.4

###   F U N C T I O N
scoreboard players set next.xmas_night oblivion 1
execute unless entity @a[scores={obl.difficulty=5..}] run function oblivion:tech/difficulty/announceaboutdifficulty