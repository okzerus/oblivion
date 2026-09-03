tellraw @s {"text":"Звуковое уведомление о появлении мобов выключено.","color":"green"}
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
scoreboard players set @s obl.soundnot 0