execute at @e[type=armor_stand,distance=..75,tag=obl.stand.has_unusual] run scoreboard players add #stand.counter oblivion 1
execute if score #stand.counter oblivion matches 3.. run tag @s add obl.stand.disabled_unusual
execute if score #stand.counter oblivion matches 3.. run tellraw @p[distance=..5] [{"text":"\n"},{"text":"[","color":"#A53355"},{"text":"Стойка для брони","color":"#FF4B4D"},{"text":"]","color":"#A53355"},{"text":"\n"},{"text":" >","color":"#A53355"},{"text":" Эффект отклонён - превышен лимит на стойки в радиусе 75 блоков (3)","color":"#FF4B4D"},{"text":"\n "}]



scoreboard players set #stand.counter oblivion 0
tag @s add obl.stand.has_unusual