# Раскладываем горизонтальную скорость предмета на X/Z и переводим в квадрат (умножаем на 1000 и возводим в квадрат, чтобы не терять точность в целочисленной математике и не связываться с корнем)
execute store result score #temp.item_mx obl run data get entity @s Motion[0] 1000
execute store result score #temp.item_mz obl run data get entity @s Motion[2] 1000
scoreboard players operation #temp.item_mx obl *= #temp.item_mx obl
scoreboard players operation #temp.item_mz obl *= #temp.item_mz obl
scoreboard players operation @s obl.parried_item.speed_sq = #temp.item_mx obl
scoreboard players operation @s obl.parried_item.speed_sq += #temp.item_mz obl

# Обычное сопротивление воздуха срезает всего пару процентов скорости за тик. Если скорость упала больше чем вдвое за один тик - это не трение, а столкновение с блоком. Разливаем жидкость там, где предмет реально остановился, а не рядом с первым попавшимся соседним блоком
scoreboard players operation #temp.item_threshold obl = @s obl.parried_item.speed_sq_old
scoreboard players operation #temp.item_threshold obl /= #two obl.const
execute if score @s obl.parried_item.speed_sq_old matches 2500.. if score @s obl.parried_item.speed_sq < #temp.item_threshold obl run function obl:tech/parrying/projectile/list/item/bucket.place

# Запоминаем скорость этого тика для сравнения в следующем
scoreboard players operation @s obl.parried_item.speed_sq_old = @s obl.parried_item.speed_sq

# Столкновение с потолком/полом считаем отдельно и по направлению вертикальной скорости - смотрим вверх только если летит вверх, вниз - только если летит вниз
execute store result score #temp.item_my obl run data get entity @s Motion[1] 1000
execute if score #temp.item_my obl matches 100.. unless block ~ ~.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
execute if score #temp.item_my obl matches ..-100 unless block ~ ~-.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
