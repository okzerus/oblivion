###   В О С С Т А Н О В Л Е Н И Е   Г Р А В И Т А Ц И И
execute store result storage obl:fall value double 0.000001 run scoreboard players get @s obl.parry.fall_gravity
function obl:tech/parrying/fall/restore_gravity with storage obl:fall

###   Б Е З О П А С Н О Е   П Р И З Е М Л Е Н И Е
# Даём щедрый запас безопасной дистанции падения до момента приземления (очищается в movement/landing)
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 1000 add_value
tag @s add obl.parry.fall_safe

###   Р А З Р Я Д К А   Э Н Е Р Г И И
## Редиректим накопленную кинетическую энергию в блоки под ногами
execute anchored eyes positioned ^ ^ ^1 run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^ ^ ^2 run setblock ~ ~ ~ air destroy
execute anchored eyes positioned ^ ^ ^3 run setblock ~ ~ ~ air destroy

###   С П Е Ц Э Ф Ф Е К Т Ы
playsound minecraft:entity.generic.explode player @s ~ ~ ~ 1 1.4
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
## Убираем экран парирования
title @s title ""

###   О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
scoreboard players set @s obl.parry.fall_count 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
