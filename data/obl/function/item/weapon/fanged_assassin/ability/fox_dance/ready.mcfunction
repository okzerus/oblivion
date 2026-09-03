# Оповещение о перезарядке способности
tellraw @s[tag=!obl.debug] [{"text":"\n"},{"text":"[","color":"#c73916"},{"text":"Tarantella di Volpe","color":"gold"},{"text":"]","color":"#c73916"},{"text":" способность перезаряжена!","color":"yellow"},{"text":"\n "}] 
tellraw @s[tag=obl.debug] [{"text":"\n"},{"text":"Отладка:\n"},{"text":"[","color":"#c73916"},{"text":"Tarantella di Volpe","color":"gold"},{"text":"]","color":"#c73916"},{"text":" способность перезаряжена!","color":"yellow"},{"text":"\n "}] 
# Звук при перезарядке способности
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.8
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.8
# Принудительная установка значения КД на 0 (для случаев выполнения функции через команду)
scoreboard players set @s obl.weapon.fanged_assassin.fox_dance.cd 0