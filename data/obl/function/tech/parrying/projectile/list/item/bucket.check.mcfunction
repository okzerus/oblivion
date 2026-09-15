# Квадрат горизонтальной скорости этого тика
execute store result score @s obl.parried_item.speed_sq run data get entity @s Motion[0] 1000
scoreboard players operation @s obl.parried_item.speed_sq *= @s obl.parried_item.speed_sq
execute store result score #temp.item_z obl run data get entity @s Motion[2] 1000
scoreboard players operation #temp.item_z obl *= #temp.item_z obl
scoreboard players operation @s obl.parried_item.speed_sq += #temp.item_z obl

# Проверяем если скорость просела больше чем на четверть
scoreboard players operation #temp.item_new obl = @s obl.parried_item.speed_sq
scoreboard players operation #temp.item_new obl *= #four obl.const
scoreboard players operation #temp.item_old obl = @s obl.parried_item.speed_sq.old
scoreboard players operation #temp.item_old obl *= #three obl.const
execute if score @s obl.parried_item.speed_sq.old matches 2500.. if score #temp.item_new obl < #temp.item_old obl run function obl:tech/parrying/projectile/list/item/bucket.place

# Запоминаем скорость для сравнения в следующем тике
scoreboard players operation @s obl.parried_item.speed_sq.old = @s obl.parried_item.speed_sq

# Отдельный чек пола/потолка
execute store result score #temp.item_y obl run data get entity @s Motion[1] 1000
execute if score #temp.item_y obl matches 100.. unless block ~ ~.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
execute if score #temp.item_y obl matches ..-100 unless block ~ ~-.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
