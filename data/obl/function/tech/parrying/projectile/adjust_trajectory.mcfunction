# Создаём маркер на снаряде для работы
execute anchored eyes positioned ^ ^ ^.0001 run summon marker ~ ~ ~ {Tags:["obl.temp.adjust_trajectory"]}
# Даём маркеру такой же поворот, как и у парирующей сущности
data modify entity @n[type=marker,tag=obl.temp.adjust_trajectory] Rotation set from entity @n[type=#obl:all_mobs,tag=obl.temp.reflecting] Rotation
# Базовая траектория: Телепортируем маркер на 1 блок вперёд
execute as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp ^ ^ ^1

# Регулировка траектории в зависимости от снаряда:
execute if entity @s[type=#obl:fireballs] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ^ ^ ^3
execute if entity @s[type=wither_skull] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ^ ^ ^3
execute if entity @s[type=ender_pearl] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ~ ~.1 ~
execute if entity @s[type=tnt] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ~ ~.25 ~
execute if entity @s[type=#obl:potions] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ~ ~.1 ~
execute if entity @s[type=experience_bottle] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ~ ~.1 ~
execute if entity @s[type=firework_rocket] as @n[type=marker,tag=obl.temp.adjust_trajectory] at @s run tp @s ~ ~-.02 ~

# Запуск снаряда в зависимости от скорости (я не имею ни малейшего понятия как это работает и зачем здесь так много сабкоманд)
execute if entity @s[tag=obl.parry_strength.1] anchored eyes facing entity @n[type=marker,tag=obl.temp.adjust_trajectory] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^.8 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.2] anchored eyes facing entity @n[type=marker,tag=obl.temp.adjust_trajectory] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1.5 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.3] anchored eyes facing entity @n[type=marker,tag=obl.temp.adjust_trajectory] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^2.5 summon marker run function obl:tech/parrying/projectile/launch
data modify entity @s[tag=!obl.power_instead_motion] Motion set from storage obl:temp vector
data modify entity @s[tag=obl.power_instead_motion] power set from storage obl:temp vector

# Очистка
kill @n[type=marker,tag=obl.temp.adjust_trajectory]