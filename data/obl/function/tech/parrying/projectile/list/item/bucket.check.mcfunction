# Ищем, если ближайший блок является твёрдым
execute unless block ~.7 ~ ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~-.7 ~ ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~.7 ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~-.7 ~ #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~.7 #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface
execute unless block ~ ~ ~-.7 #obl:non_solid if block ~ ~ ~ #obl:non_solid run tag @s add obl.temp.found_surface

# Нашли - выливаем жидкость
execute if entity @s[tag=obl.temp.found_surface] run function obl:tech/parrying/projectile/list/item/bucket.place

# Очистка
tag @s remove obl.temp.found_surface