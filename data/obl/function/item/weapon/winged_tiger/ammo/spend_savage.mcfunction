# Высчитываем патрон
scoreboard players remove @s obl.weapon.winged_tiger.ammo.savage 1
# Функция
execute at @n[type=#obl:all_mobs,tag=obl.temp.hit] positioned ~ ~.7 ~ run function obl:item/weapon/winged_tiger/ammo/hit_savage
execute unless entity @e[type=#obl:all_mobs,tag=obl.temp.hit] anchored eyes positioned ^ ^ ^2.5 run function obl:item/weapon/winged_tiger/ammo/hit_savage
# Обновляем описание оружия
function obl:item/weapon/winged_tiger/ammo/data_push