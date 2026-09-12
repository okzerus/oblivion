###   Ф У Н К Ц И Я
## Проверяем, если предмет на земле.
# Нет? Добавляем тег
execute unless entity @s[tag=obl.on_ground] if predicate obl:on.ground run tag @s add obl.on_ground
# Да? Убираем тег
execute if entity @s[tag=obl.on_ground] unless predicate obl:on.ground run tag @s remove obl.on_ground
# Да? Убираем тег рефлекта (если он был), теперь это обычный предмет
execute if entity @s[tag=obl.on_ground] run tag @s remove obl.projectile.reflected

## Проверяем, если предмет является любым из нижеперечисленных.
# Ведро воды
execute if entity @s[tag=obl.item.water_bucket,tag=obl.projectile.reflected] run function obl:tech/parrying/projectile/list/bucket/check
# Ведро лавы
execute if entity @s[tag=obl.item.lava_bucket,tag=obl.projectile.reflected] run function obl:tech/parrying/projectile/list/bucket/check

## Проверяем парирование
tag @s add obl.temp.projectile_hit_check
# Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id
# Проверяем: Если эта сущность может двигаться, не является непарируемой, и не находится на земле, от лица ближайшего моба/игрока с активным кадром парирования (если таковой есть), НЕ имеющего такой же айди, на позиции в 2.5 блоков в сторону его взгляда, ищем эту же сущность в радиусе 2.3 блоков. Найдена - выдаем мобу тег на парирование.
execute if entity @s[tag=!obl.freeze,tag=!obl.projectile.unparryable,tag=!obl.on_ground] as @n[type=#obl:all_mobs,tag=obl.can_parry.projectile,predicate=!obl:matching_score] at @s anchored eyes positioned ^ ^ ^2.5 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.3] run tag @s add obl.temp.parrying
# Проверяем: Если эта сущность может двигаться, не является непарируемой, не находится на земле, и не была отражена, от лица ближайшего моба/игрока с активным кадром парирования (если таковой есть), ИМЕЮЩЕГО такой же айди, на позиции в 3.5 блоков в сторону его взгляда, ищем эту же сущность в радиусе 3.3 блоков. Найдена - выдаем мобу тег на парирование.
execute if entity @s[tag=!obl.freeze,tag=!obl.projectile.unparryable,tag=!obl.on_ground,tag=!obl.projectile.reflected] as @n[type=#obl:all_mobs,tag=obl.can_parry.projectile,predicate=obl:matching_score] at @s anchored eyes positioned ^ ^ ^3.5 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..3.3] run tag @s add obl.temp.parrying
# Если команда выше успешно выполнилась, и моб получил тег, выполняем функцию парирования на этом снаряде.
execute if entity @n[type=#obl:all_mobs,tag=obl.temp.parrying] at @s run function obl:tech/parrying/projectile/parry
# Убираем временный тег проверки на попадание
tag @s remove obl.temp.projectile_hit_check