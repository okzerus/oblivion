# Читаем горизонтальную скорость этого тика (умножаем на 1000, чтобы не терять точность в целочисленной математике)
execute store result score #temp.item_mx obl run data get entity @s Motion[0] 1000
execute store result score #temp.item_mz obl run data get entity @s Motion[2] 1000

# Скалярное произведение скорости этого тика на скорость прошлого - показывает, насколько изменилось НАПРАВЛЕНИЕ полёта, а не только его модуль. От обычного сопротивления воздуха направление не меняется (скорость просто немного масштабируется), а вот столкновение со стеной под любым углом, даже скользящим, сразу гасит составляющую скорости перпендикулярную стене - и направление заметно уходит в сторону, пусть даже суммарная скорость почти не просела
scoreboard players operation #temp.item_dot obl = #temp.item_mx obl
scoreboard players operation #temp.item_dot obl *= @s obl.parried_item.motion_x_old
scoreboard players operation #temp.item_cross obl = #temp.item_mz obl
scoreboard players operation #temp.item_cross obl *= @s obl.parried_item.motion_z_old
scoreboard players operation #temp.item_dot obl += #temp.item_cross obl

# Квадрат скорости прошлого тика - нужен и для сравнения, и чтобы отсеять только что запущенный/почти неподвижный предмет
scoreboard players operation #temp.item_old_sq obl = @s obl.parried_item.motion_x_old
scoreboard players operation #temp.item_old_sq obl *= @s obl.parried_item.motion_x_old
scoreboard players operation #temp.item_cross obl = @s obl.parried_item.motion_z_old
scoreboard players operation #temp.item_cross obl *= @s obl.parried_item.motion_z_old
scoreboard players operation #temp.item_old_sq obl += #temp.item_cross obl

# Если скалярное произведение просело больше чем на 10% от квадрата прошлой скорости - направление изменилось не от трения (оно почти не отклоняет), а от удара о блок под углом. Разливаем жидкость там, где предмет реально врезался, а не рядом с первым попавшимся соседним блоком
scoreboard players operation #temp.item_dot obl *= #ten obl.const
scoreboard players operation #temp.item_cross obl = #temp.item_old_sq obl
scoreboard players operation #temp.item_cross obl *= #nine obl.const
execute if score #temp.item_old_sq obl matches 2500.. if score #temp.item_dot obl < #temp.item_cross obl run function obl:tech/parrying/projectile/list/item/bucket.place

# Запоминаем скорость этого тика для сравнения в следующем
scoreboard players operation @s obl.parried_item.motion_x_old = #temp.item_mx obl
scoreboard players operation @s obl.parried_item.motion_z_old = #temp.item_mz obl

# Столкновение с потолком/полом считаем отдельно и по направлению вертикальной скорости - смотрим вверх только если летит вверх, вниз - только если летит вниз
execute store result score #temp.item_my obl run data get entity @s Motion[1] 1000
execute if score #temp.item_my obl matches 100.. unless block ~ ~.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
execute if score #temp.item_my obl matches ..-100 unless block ~ ~-.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
