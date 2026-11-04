# Высчитываем патрон и засчитываем его как потраченный
scoreboard players remove @s obl.weapon.winged_tiger.ammo.normal 1
scoreboard players add @s obl.weapon.winged_tiger.ammo_spent 1
# Функция
execute at @n[type=#obl:all_mobs,tag=obl.temp.hit] positioned ~ ~.7 ~ run function obl:item/weapon/winged_tiger/ammo/hit_normal
execute unless entity @e[type=#obl:all_mobs,tag=obl.temp.hit] anchored eyes positioned ^ ^ ^2.5 run function obl:item/weapon/winged_tiger/ammo/hit_normal
# Обновляем описание оружия
function obl:item/weapon/winged_tiger/ammo/data_push