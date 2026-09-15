###   Н А   А Т А К У Ю Щ Е М
tag @s add obl.temp.attacker
tag @s add obl.parried
scoreboard players operation @s obl.parried_by_id = @e[type=#obl:all_mobs,tag=obl.temp.victim] obl.id
# Экран парирования
title @s times 1 200 0
title @s title {"text":"\uE001","shadow_color":[0,0,0,0]}
title @s subtitle ""
# Модификаторы на время парирования
attribute @s minecraft:movement_speed modifier add obl.parried -100 add_value
attribute @s minecraft:attack_damage modifier add obl.parried -100 add_value
data merge entity @s[type=!player] {NoAI:1b,NoGravity:1b}


###   Н А   Ж Е Р Т В Е
tag @e[type=#obl:all_mobs,tag=obl.temp.victim] add obl.parry_success
tag @e[type=#obl:all_mobs,tag=obl.temp.victim] add obl.parry_success.direct
# Экран парирования
title @p[tag=obl.temp.victim] times 1 200 0
title @p[tag=obl.temp.victim] title {"text":"\uE001","shadow_color":[0,0,0,0]}
title @p[tag=obl.temp.victim] subtitle ""
# Модификатор скорости
execute as @e[type=#obl:all_mobs,tag=obl.temp.victim] run attribute @s minecraft:movement_speed modifier add obl.parrying -100 add_value
# Отключаем парирование снарядов на время контактного парирования
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.disable_projectile_parrying
# Проигрываем звук парирования
execute as @n[type=#obl:all_mobs,tag=obl.temp.victim] run function obl:tech/parrying/sound


###   О Ч И С Т К А
tag @e[type=#obl:all_mobs] remove obl.temp.victim
tag @e[type=#obl:all_mobs] remove obl.temp.attacker