###   Б Е З О П А С Н О Е   П Р И З Е М Л Е Н И Е
# Даём щедрый запас безопасной дистанции падения до момента приземления (очищается в movement/landing)
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 1000 add_value
tag @s add obl.parry.fall_safe

###   Р А З Р Я Д К А   Э Н Е Р Г И И
## Редиректим накопленную кинетическую энергию в блоки по направлению взгляда
execute anchored eyes run function obl:tech/parrying/fall/raycast

###   В И З У А Л Ь Н Ы Й   И М П А К Т
## Подбрасываем игрока отрицательной гравитацией на пару тиков; обычная гравитация возвращается в revert_launch
attribute @s minecraft:gravity base set -0.08
scoreboard players set @s obl.parry.fall_launch 3

###   О Т К А Т
scoreboard players set @s obl.parry.cd 60

## Убираем экран парирования
title @s title ""

###   О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
scoreboard players set @s obl.parry.fall_count 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
