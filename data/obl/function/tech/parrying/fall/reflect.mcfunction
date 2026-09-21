###   Б Е З О П А С Н О Е   П Р И З Е М Л Е Н И Е
# Даём щедрый запас безопасной дистанции падения до момента приземления (очищается в movement/landing)
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 1000 add_value
tag @s add obl.parry.fall_safe

###   Р А З Р Я Д К А   Э Н Е Р Г И И
## Редиректим накопленную кинетическую энергию в блоки по направлению взгляда
execute anchored eyes run function obl:tech/parrying/fall/raycast

###   В И З У А Л Ь Н Ы Й   И М П А К Т
## Подбрасываем игрока отрицательной гравитацией на пару тиков; обычная гравитация возвращается в revert_launch
## Сила подброса растёт вместе с высотой падения
execute if score @s obl.parry.fall_count matches 10..32 run attribute @s minecraft:gravity base set -0.24
execute if score @s obl.parry.fall_count matches 33..64 run attribute @s minecraft:gravity base set -0.48
execute if score @s obl.parry.fall_count matches 65..128 run attribute @s minecraft:gravity base set -0.64
execute if score @s obl.parry.fall_count matches 129.. run attribute @s minecraft:gravity base set -1.0
scoreboard players set @s obl.parry.fall_launch 3

###   П О В Р Е Ж Д Е Н И Е   Щ И Т А
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage

###   О Т К А Т
scoreboard players set @s obl.parry.cd 30

## Убираем экран парирования
title @s title ""

###   О Ч И С Т К А
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
kill @e[type=marker,tag=obl.parry.fall_anchor,predicate=obl:matching_score.parrying]
scoreboard players set @s obl.parry.tick 0
scoreboard players set @s obl.parry.fall_count 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
