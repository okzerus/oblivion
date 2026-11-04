###   С П И С О К   О Р У Ж И Я
# Проблеск Зари
execute if predicate obl:holding/crack_of_dawn at @e[type=#obl:all_mobs,tag=obl.temp.hit] run function obl:item/weapon/crack_of_dawn/hit
# Чревоугодие
execute if predicate obl:holding/gluttony at @e[type=#obl:all_mobs,tag=obl.temp.hit] run function obl:item/weapon/gluttony/hit
# Оскал Убийцы
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 1.. at @e[type=#obl:all_mobs,tag=obl.temp.hit] run function obl:item/weapon/fanged_assassin/hit
# Крылатый Тигр
execute if predicate obl:holding/winged_tiger run function obl:item/weapon/winged_tiger/hit