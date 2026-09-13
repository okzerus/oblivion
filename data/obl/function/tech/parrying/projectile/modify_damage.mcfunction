# Сохраняем текущий урон снаряда в счёт
execute store result score #damage obl run data get entity @s damage
# Если снаряд - стрела, добавляем уровень пронзания (и ShotFromCrossbow для его работы)
execute if entity @s[type=#minecraft:arrows] run data merge entity @s {PierceLevel:1b,ShotFromCrossbow:1b}
# Добавляем 8 урона к стреле/24 урона к трезубцу
execute if entity @s[type=#minecraft:arrows] run scoreboard players add #damage obl 8
execute if entity @s[type=trident] run scoreboard players add #damage obl 24
# Перезаписываем урон снаряда
execute store result entity @s damage double 1 run scoreboard players get #damage obl
# Добавляем тег, чтобы избежать повторной модификации урона
tag @s add obl.parried_damage
# Очистка
scoreboard players reset #damage obl
