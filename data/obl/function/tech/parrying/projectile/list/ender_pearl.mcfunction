###   Ф У Н К Ц И Я
## Выдаём временный тег проверки на попадание
tag @s add obl.temp.projectile_hit_check

## Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id

## Проверяем: 
# От лица всех сущностей в радиусе 5 блоков с активным кадром парирования НЕ имеющих такой же айди как у снаряда; 
# на позиции через 2.5 блока в сторону их взгляда, ищем этот же снаряд в радиусе 2.3 блоков;
# нашли - выдаем сущности тег на парирование.
execute as @e[type=#obl:all_mobs,tag=obl.can_parry,tag=!obl.disable_projectile_parrying,predicate=!obl:matching_score,distance=..5] at @s anchored eyes positioned ^ ^ ^2.5 if entity @n[type=#obl:parryable,tag=obl.temp.projectile_hit_check,distance=..2.3] run tag @s add obl.temp.parrying

## Проверяем: 
# Если этот снаряд РАЗРЕШЕНО парировать сущности с таким же айди, и ЗАПРЕЩЕНО парировать повторно (тег выдаётся при первом рефлекте);
# от лица всех сущностей в радиусе 7 блоков с активным кадром парирования ИМЕЮЩИХ такой же айди как у снаряда; 
# на позиции через 3.5 блока в сторону их взгляда, ищем этот же снаряд в радиусе 3.3 блоков;
# нашли - выдаем сущности тег на парирование.
execute if entity @s[tag=obl.allow_self_parry,tag=!obl.disallow_repeat_parry] as @e[type=#obl:all_mobs,tag=obl.can_parry,tag=!obl.disable_projectile_parrying,predicate=obl:matching_score,distance=..7] at @s anchored eyes positioned ^ ^ ^3.5 if entity @n[type=ender_pearl,tag=obl.temp.projectile_hit_check,distance=..3.3] run tag @s add obl.temp.parrying

## Если команды выше успешно выполнились, и сущность получила тег, выполняем функцию парирования на этом снаряде, ссылаясь на тегнутую сущность как парировашего.
execute if entity @n[type=#obl:all_mobs,tag=obl.temp.parrying] run function obl:tech/parrying/projectile/parry

## Убираем временный тег проверки на попадание
tag @s remove obl.temp.projectile_hit_check