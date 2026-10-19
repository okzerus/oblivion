## Проверяем, есть ли под ногами блоки (чем дольше падали, тем выше скорость - добавляем экстра блок для проверки
execute unless block ~ ~-1 ~ #obl:non_solid run tag @s add obl.temp.near_ground
execute unless block ~ ~-2 ~ #obl:non_solid run tag @s add obl.temp.near_ground
execute if score @s obl.parry.fall_count matches 24.. unless block ~ ~-3 ~ #obl:non_solid run tag @s add obl.temp.near_ground
execute if score @s obl.parry.fall_count matches 48.. unless block ~ ~-4 ~ #obl:non_solid run tag @s add obl.temp.near_ground
execute if score @s obl.parry.fall_count matches 64.. unless block ~ ~-5 ~ #obl:non_solid run tag @s add obl.temp.near_ground
execute if score @s obl.parry.fall_count matches 100.. unless block ~ ~-6 ~ #obl:non_solid run tag @s add obl.temp.near_ground

## Парируем падение
execute if entity @s[tag=!obl.parry_success.fall,tag=obl.can_parry,tag=obl.temp.near_ground,x_rotation=60..90] run function obl:tech/parrying/fall/parry

## Очистка
tag @s remove obl.temp.near_ground