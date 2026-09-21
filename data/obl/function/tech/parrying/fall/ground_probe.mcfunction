###   П Р О В Е Р К А   Б Л О К О В   П О Д   Н О Г А М И
# Чем дольше падаем, тем быстрее летим - на высокой скорости за 1 тик можно пролететь
# больше 1.5 блока и проскочить окно, когда до земли было близко. Поэтому глубина
# проверки блоков под ногами растёт вместе с накопленным падением.
tag @s remove obl.parry.fall_near_ground

execute unless block ~ ~-1 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
execute unless block ~ ~-2 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
execute if score @s obl.parry.fall_count matches 10.. unless block ~ ~-3 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
execute if score @s obl.parry.fall_count matches 33.. unless block ~ ~-4 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
execute if score @s obl.parry.fall_count matches 65.. unless block ~ ~-5 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
execute if score @s obl.parry.fall_count matches 129.. unless block ~ ~-6 ~ #obl:non_solid run tag @s add obl.parry.fall_near_ground
