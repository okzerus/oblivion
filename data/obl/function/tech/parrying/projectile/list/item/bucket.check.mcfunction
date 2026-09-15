# Квадрат горизонтальной скорости этого тика (Motion×1000, в квадрат - чтобы не терять точность в целочисленной математике и не связываться с корнем)
execute store result score @s obl.parried_item.speed_sq run data get entity @s Motion[0] 1000
scoreboard players operation @s obl.parried_item.speed_sq *= @s obl.parried_item.speed_sq
execute store result score #temp.item_z obl run data get entity @s Motion[2] 1000
scoreboard players operation #temp.item_z obl *= #temp.item_z obl
scoreboard players operation @s obl.parried_item.speed_sq += #temp.item_z obl

# Сопротивление воздуха почти не трогает скорость за тик. Если скорость просела больше чем на четверть - это удар о блок (в том числе под углом), а не трение. Сравниваем через умножение (×4 и ×3) вместо деления, чтобы не терять точность
scoreboard players operation #temp.item_new obl = @s obl.parried_item.speed_sq
scoreboard players operation #temp.item_new obl *= #four obl.const
scoreboard players operation #temp.item_old obl = @s obl.parried_item.speed_sq_old
scoreboard players operation #temp.item_old obl *= #three obl.const
execute if score @s obl.parried_item.speed_sq_old matches 2500.. if score #temp.item_new obl < #temp.item_old obl run function obl:tech/parrying/projectile/list/item/bucket.place

# Запоминаем скорость для сравнения в следующем тике
scoreboard players operation @s obl.parried_item.speed_sq_old = @s obl.parried_item.speed_sq

# Потолок/пол - отдельно, по направлению вертикальной скорости (вверх смотрим только если летит вверх, вниз - если вниз)
execute store result score #temp.item_y obl run data get entity @s Motion[1] 1000
execute if score #temp.item_y obl matches 100.. unless block ~ ~.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
execute if score #temp.item_y obl matches ..-100 unless block ~ ~-.7 ~ #obl:non_solid run function obl:tech/parrying/projectile/list/item/bucket.place
