## Размер взрыва в зависимости от накопленной высоты падения
# Радиус (разрушает блоки только если игрок вприсяди)
execute if predicate obl:is.sneaking if score @s obl.falling_distance matches ..23 run function obl:tech/parrying/fall/explosion/radius_1
execute if predicate obl:is.sneaking if score @s obl.falling_distance matches 24..47 run function obl:tech/parrying/fall/explosion/radius_2
execute if predicate obl:is.sneaking if score @s obl.falling_distance matches 48..99 run function obl:tech/parrying/fall/explosion/radius_3
execute if predicate obl:is.sneaking if score @s obl.falling_distance matches 100.. run function obl:tech/parrying/fall/explosion/radius_4
# Звуки
execute if score @s obl.falling_distance matches ..23 run function obl:tech/parrying/fall/explosion/sfx_1
execute if score @s obl.falling_distance matches 24..47 run function obl:tech/parrying/fall/explosion/sfx_2
execute if score @s obl.falling_distance matches 48..99 run function obl:tech/parrying/fall/explosion/sfx_3
execute if score @s obl.falling_distance matches 100.. run function obl:tech/parrying/fall/explosion/sfx_4

## Редиректим урон от падения сущностям поблизости
# Ставим текущую сущность как источник урона
tag @s add obl.temp.damage_source
# Переносим дистанцию падения в счёт урона
scoreboard players operation #fall_damage obl = @s obl.falling_distance
# Забираем приблизительное кол-во урона за первые три блока которые пролетел игрок, ибо они не должны считаться для получения урона
scoreboard players remove #fall_damage obl 8
# Ставим минимальный урон на 1
execute if score #fall_damage obl matches ..0 run scoreboard players set #fall_damage obl 1
# Сохраняем урон в хранилище даты
execute store result storage obl:damage value int 1 run scoreboard players get #fall_damage obl
# Наносим урон
execute if score @s obl.falling_distance matches ..23 as @e[type=#obl:all_mobs,distance=..2.5,tag=!obl.temp.damage_source] run function obl:tech/parrying/fall/damage with storage obl:damage
execute if score @s obl.falling_distance matches 24..47 as @e[type=#obl:all_mobs,distance=..3.5,tag=!obl.temp.damage_source] run function obl:tech/parrying/fall/damage with storage obl:damage
execute if score @s obl.falling_distance matches 48..99 as @e[type=#obl:all_mobs,distance=..4.5,tag=!obl.temp.damage_source] run function obl:tech/parrying/fall/damage with storage obl:damage
execute if score @s obl.falling_distance matches 100.. as @e[type=#obl:all_mobs,distance=..6,tag=!obl.temp.damage_source] run function obl:tech/parrying/fall/redirect_damage with storage obl:damage

## Спецэффекты
particle minecraft:crit ~ ~ ~ 0 0 0 1 150

tag @s add obl.temp.end_raycast
tag @s remove obl.temp.damage_source