# Эта функция для ВТОРОЙ части парирования (сам рефлект, присвоение новой траектории, разморозка)
# Выполняется НА СУЩНОСТИ.

###   Н А   С Н А Р Я Д Е
## Сбрасываем айди снаряда
scoreboard players set @s obl.parried_by_id 0
## Размораживаем снаряд
tag @e[type=#obl:parryable,tag=obl.temp.reflected] remove obl.freeze
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] run data merge entity @s {NoGravity:0b,NoAI:0b}
## Спецэффекты
execute positioned ~ ~-1 ~ run function obl:tech/parrying/svfx/reflect.on_projectile
## Модифицируем снаряд
data merge entity @s[type=trident] {DealtDamage:1b}
data merge entity @s[type=item] {PickupDelay:10s}
## Запускаем снаряд вниз
execute if entity @s[type=!trident] rotated ~ 90 positioned ^ ^ ^0.5 summon marker run function obl:tech/parrying/projectile/launch
## Очистка
tag @s remove obl.temp.same_owner
tag @s remove obl.temp.reflected
tag @s remove obl.projectile.parried
tag @s remove obl.parry_strength.1
tag @s remove obl.parry_strength.2
tag @s remove obl.parry_strength.3