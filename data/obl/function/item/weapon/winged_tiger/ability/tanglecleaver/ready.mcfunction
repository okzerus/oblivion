# Оповещение о перезарядке способности
tellraw @s[tag=!obl.debug] [{"text":"\n"},{"text":"[Рассечение]","color":"#fe0000"},{"text":" способность перезаряжена!","color":"yellow"},{"text":"\n "}]
tellraw @s[tag=obl.debug] [{"text":"\n"},{"text":"Отладка:\n"},{"text":"[Рассечение]","color":"#fe0000"},{"text":" способность перезаряжена!","color":"yellow"},{"text":"\n "}]
# Звук при перезарядке способности
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.8
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.8
# Принудительная установка значения КД на 0 (для случаев выполнения функции через команду)
scoreboard players set @s obl.weapon.winged_tiger.tanglecleaver.cd 0