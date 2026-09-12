###   Ф У Н К Ц И Я
## Выдаём временный тег проверки на попадание
tag @s add obl.temp.projectile_hit_check
## Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id
## Проверяем: Если эта сущность может двигаться, и не является непарируемой, от лица ближайшего моба/игрока с активным кадром парирования (если таковой есть), НЕ имеющего такой же айди, на позиции в -2.5 блоков в сторону его взгляда, ищем эту же сущность в радиусе 2.3 блоков. Найдена - выдаем мобу тег на парирование.
execute if entity @s[tag=!obl.freeze,tag=!obl.projectile.unparryable] as @e[type=#obl:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile,predicate=!obl:matching_score] at @s anchored eyes positioned ^ ^ ^-2.5 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.3] run tag @s add obl.temp.parrying
## Если команда выше успешно выполнилась, и моб получил тег, выполняем функцию парирования на этом снаряде.
execute if entity @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function obl:tech/parrying/projectile/parry
## Убираем временный тег проверки на попадание
tag @s remove obl.temp.projectile_hit_check