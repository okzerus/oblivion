###   Н А   С У Щ Н О С Т И
## Предотвращаем урон от падения (убирается в movement/landing)
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 100000 add_value
tag @s add obl.parry.fall_safe
## Откат парирования
scoreboard players set @s obl.parry.cd 120
## Повреждение щита
tag @s add obl.temp.parry_fail
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Убираем экран парирования
title @s title ""
## Спецэффекты
particle minecraft:dust{color:[0.6,0.0,0.0],scale:0.8} ~ ~.5 ~ 0.3 0.6 0.3 0 50
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 0.8
particle minecraft:end_rod ~ ~.5 ~ 0.3 0.6 0.3 0 20
## Возвращаем гравитацию игрока
attribute @s minecraft:gravity base reset
## Удвоенный урон от падения
# Переносим дистанцию падения в счёт урона
scoreboard players operation #fall_damage obl = @s obl.falling_distance
# Забираем приблизительное кол-во урона за первые три блока которые пролетел игрок, ибо они не должны считаться для получения урона
scoreboard players remove #fall_damage obl 8
# Ставим минимальный урон на 1
execute if score #fall_damage obl matches ..0 run scoreboard players set #fall_damage obl 1
# Умножаем урон на 2
scoreboard players operation #fall_damage obl *= #two obl.const
# Сохраняем урон в хранилище даты
execute store result storage obl:damage value int 1 run scoreboard players get #fall_damage obl
# Наносим урон
function obl:tech/parrying/fall/damage with storage obl:damage
## Отладка
tellraw @s[tag=obl.debug] [{"text":"Провалил парирование падения."}]

###   О Ч И С Т К А
scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=marker,tag=obl.parry.fall_anchor,predicate=obl:matching_score]
scoreboard players set @s obl.parry.tick 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
