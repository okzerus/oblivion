tellraw @s {"text":"Уведомление в чат о появлении мобов выключено.","color":"green"}
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
scoreboard players set @s obl.chatnot 0