###   Ф У Н К Ц И Я
## Если эта сущность не имеет тег obl.on_ground, но находится на земле, выдаём тег
execute unless entity @s[tag=obl.on_ground] if predicate obl:on.ground run tag @s add obl.on_ground
## Если эта сущность имеет тег obl.on_ground, но не находится на земле, убираем тег
execute if entity @s[tag=obl.on_ground] unless predicate obl:on.ground run tag @s remove obl.on_ground

## Выдаём временный тег проверки на попадание
tag @s add obl.temp.projectile_hit_check
## Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id
## Проверяем: Если эта сущность может двигаться, не является непарируемой, и не находится на земле, от лица ближайшего моба/игрока с активным кадром парирования (если таковой есть), на позиции в 2.2 блоков в сторону его взгляда, ищем эту же сущность в радиусе 2.2 блоков. Найдена - выдаем мобу тег на парирование.
execute if entity @s[tag=!obl.dont_move,tag=!obl.projectile.unparryable,tag=!obl.on_ground] as @e[type=#obl:all_mobs,limit=1,sort=nearest,tag=obl.can_parry.projectile] at @s anchored eyes positioned ^ ^ ^2.2 if entity @e[type=#obl:parryable,tag=obl.temp.projectile_hit_check,limit=1,distance=..2.2] run tag @s add obl.temp.parrying
## Если команды выше успешно выполнились, и моб получил тег, выполняем функцию парирования на этом снаряде.
execute if entity @e[type=#obl:all_mobs,tag=obl.temp.parrying,limit=1,sort=nearest] at @s run function obl:tech/parrying/projectile/parry
## Убираем временный тег проверки на попадание
tag @s remove obl.temp.projectile_hit_check