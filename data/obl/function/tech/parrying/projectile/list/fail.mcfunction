###   З А П У С К   С Н А Р Я Д А
## Размораживаем снаряд
tag @s remove obl.freeze
data merge entity @s {NoGravity:0b,NoAI:0b}
## Модифицированная adjust_trajectory.mcfunction под фейл парирования
# Запуск снаряда в зависимости от скорости
execute if entity @s[tag=obl.parry_strength.1] anchored eyes facing entity @n[type=#obl:all_mobs,tag=obl.temp.failed_parry] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.2] anchored eyes facing entity @n[type=#obl:all_mobs,tag=obl.temp.failed_parry] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^2 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.3] anchored eyes facing entity @n[type=#obl:all_mobs,tag=obl.temp.failed_parry] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^3 summon marker run function obl:tech/parrying/projectile/launch
data modify entity @s[tag=!obl.power_instead_motion] Motion set from storage obl:temp vector
data modify entity @s[tag=obl.power_instead_motion] Power set from storage obl:temp vector
## Дополнительная модификация снаряда
# Взрываем динамит
data merge entity @s[type=tnt] {fuse:1s}
# Подбираем предмет
data merge entity @s[type=item] {PickupDelay:0s}
# Уничтожаем эндер-жемчуг
kill @s[type=ender_pearl]
## Нереализовано
# execute if entity @s[type=armor_stand,tag=obl.marauder.grenade] run function obl:abilities/mobs/ghost_ship/marauder.grenade.explode.fail
# execute if entity @s[type=zombie,tag=obl.crystodian] run function obl:abilities/mobs/crystodian/fail

###   О Ч И С Т К А
tag @s remove obl.temp.same_owner
tag @s remove obl.temp.reflected
tag @s remove obl.parried
tag @s remove obl.parry_strength.1
tag @s remove obl.parry_strength.2
tag @s remove obl.parry_strength.3
tag @s remove obl.power_instead_motion