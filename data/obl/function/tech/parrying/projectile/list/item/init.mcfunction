# Проверяем тип предмета
execute if items entity @s contents minecraft:lava_bucket run tag @s add obl.item.liquid_bucket
execute if items entity @s contents minecraft:lava_bucket run tag @s add obl.item.lava_bucket
execute if items entity @s contents minecraft:water_bucket run tag @s add obl.item.liquid_bucket
execute if items entity @s contents minecraft:water_bucket run tag @s add obl.item.water_bucket

# Дополнительная настройка предмета в зависимости от типа
execute if entity @s[tag=obl.item.lava_bucket] run tag @s add obl.parry_strength.3
execute if entity @s[tag=obl.item.water_bucket] run tag @s add obl.parry_strength.3
execute if entity @s[tag=obl.item.lava_bucket] run tag @s remove obl.parry_strength.2
execute if entity @s[tag=obl.item.water_bucket] run tag @s remove obl.parry_strength.2

# Даём знать, что предмет был успешно модифицирован
tag @s add obl.item.init