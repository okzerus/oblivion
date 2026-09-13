# Эта функция для ВТОРОЙ части парирования (сам рефлект, присвоение новой траектории, разморозка)
# Выполняется НА СУЩНОСТИ.

###   С М Е Н А   А Й Д И
# Временный тег на сущность для дальнейшего референса
tag @s add obl.temp.reflecting
# Сначала сохраняем айди сущности в временный селектор использующийся в предикатах
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
scoreboard players operation #id.temp obl.id = @s obl.id
# Временно тегаем парированные снаряды соответствующие сохранённому айди с помощью предиката
tag @e[type=#obl:parryable,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] add obl.temp.reflected
# Если никаких снарядов не было тегнуто, даём сущности соответстующий тег
execute unless entity @e[type=#obl:parryable,tag=obl.temp.reflected] run tag @s add obl.temp.no_reflected
# Временно тегаем снаряды если их айди и так совпадали с айди сущности
tag @e[type=#obl:parryable,predicate=obl:matching_score] add obl.temp.same_owner
# Наконец, полноценная замена айди снаряда на айди парировавшей сущности
scoreboard players operation @e[type=#obl:parryable,tag=obl.temp.reflected] obl.id = @e[type=#obl:all_mobs,tag=obl.temp.reflecting] obl.id


###   Н А   С Н А Р Я Д Е
# Снаряд был парирован
tag @e[type=#obl:parryable,tag=obl.temp.reflected] add obl.projectile.reflected
# Если снаряд - кастомный снаряд Забвения, устанавливаем максимальную скорость полёта
tag @e[type=marker,tag=obl.projectile,tag=obl.temp.reflected] remove obl.projectile.speed.1
tag @e[type=marker,tag=obl.projectile,tag=obl.temp.reflected] remove obl.projectile.speed.2
tag @e[type=marker,tag=obl.projectile,tag=obl.temp.reflected] add obl.projectile.speed.3
# Устанавливаем поворот снаряда на такой же, как и у парировавшей сущности
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] run data modify entity @s Rotation set from entity @e[type=#obl:all_mobs,tag=obl.temp.reflecting,limit=1] Rotation
# Размораживаем снаряд
tag @e[type=#obl:parryable,tag=obl.temp.reflected] remove obl.freeze
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] run data merge entity @s {NoGravity:0b,NoAI:0b}
# Спецэффекты
execute at @e[type=#obl:parryable,tag=obl.temp.reflected] run function obl:tech/parrying/svfx/reflect.on_projectile
execute if entity @s[tag=obl.temp.no_reflected] anchored eyes positioned ^ ^ ^3 run function obl:tech/parrying/svfx/reflect.on_projectile


###   Н А   С У Щ Н О С Т И
## Откат парирования
# Стандартный откат
scoreboard players set @s obl.parry.cd 20
# Если парированный снаряд был от игрока, время отката утраивается (PvP баланс)
execute if entity @e[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.projectile.player_owner,tag=!obl.temp.same_owner] run scoreboard players set @s obl.parry.cd 60
## Повреждение щита
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Положительные эффекты
execute if entity @e[type=#obl:parryable,tag=obl.temp.reflected,tag=!obl.temp.same_owner,tag=!obl.no_parry_buffs] run function obl:tech/parrying/buff
## Спецэффекты
function obl:tech/parrying/svfx/reflect.on_entity
## Достижения
function obl:tech/parrying/advancements


## Модификация снаряда
# Предмет: Добавляет тег ведра воды/лавы + 10 тиков отката подбора предмета
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] if entity @s[type=item] run function obl:tech/parrying/projectile/list/item.modify
execute if entity @s[tag=obl.just_parried_fucking_lightning] anchored eyes run function obl:tech/raycast/parrying_lightning
## CLEANUP


###   З А П У С К   С Н А Р Я Д А
# Установка траектории полёта и запуск снаряда
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] at @s run function obl:tech/parrying/projectile/adjust_trajectory
# Устанавливаем парирующую сущность как нового владельца снаряда
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] run data modify entity @s[type=!ender_pearl,type=!trident,type=!shulker_bullet,type=!item] Owner set from entity @n[type=#obl:all_mobs,tag=obl.temp.reflecting] UUID
## Модификаторы снарядов
# Эндер-жемчуг: Если парирующий игрок крадётся, заменяет владельца жемчуга на его самого
execute as @e[type=ender_pearl,tag=obl.temp.reflected] if entity @p[tag=obl.temp.reflecting,predicate=obl:is.sneaking] run data modify entity @s Owner set from entity @p[type=#obl:all_mobs,tag=obl.temp.reflecting] UUID
# Предмет: Заменяет UUID метающего на того, кто парировал
execute as @e[type=item,tag=obl.temp.reflected] run data modify entity @s Thrower set from entity @n[type=#obl:all_mobs,tag=obl.temp.reflecting] UUID
# Фейерверк: Меняет полёт на горизонтальный и обновляем продолжительность полёта
execute as @e[type=firework_rocket,tag=obl.temp.reflected] run data merge entity @s {ShotAtAngle:1b,Life:1}
# Трезубец: Увеличиваем урон
execute as @e[type=trident,tag=obl.temp.reflected] run function obl:tech/parrying/projectile/modify_damage
# Стрела: Увеличиваем урон и добавляем пронзание
execute as @e[type=#minecraft:arrows,tag=obl.temp.reflected] run function obl:tech/parrying/projectile/modify_damage
# Падающий блок: Обновляем продолжительность полёта и урон от падения (наковальня онли)
execute as @e[type=falling_block,tag=obl.temp.reflected] run data merge entity @s {FallHurtAmount:12f,Time:1}
# Наковальня: Добавляем нестабильности для последовательных парирований
execute as @e[type=falling_block,tag=obl.temp.reflected] if entity @s[nbt={BlockState:{Name:"minecraft:anvil"}}] run function obl:tech/parrying/projectile/list/anvil.modify
# Магма куб: Активируем режим ballin'га
tag @e[type=magma_cube,tag=obl.temp.reflected] add obl.ballin
# Снаряд шалкера: Унижаем шалкер перенаправляя его снаряд в него же
tag @e[type=shulker_bullet,tag=obl.temp.reflected] add obl.temp.reflecting_shulker_bullet
execute as @e[type=shulker_bullet,tag=obl.temp.reflected] at @s summon shulker_bullet run function obl:tech/parrying/projectile/list/shulker_bullet.modify
# Нереализованные мобы
#execute as @e[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.crystodian] at @s run function obl:abilities/mobs/crystodian/reflected
#execute as @e[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.marauder.grenade] run scoreboard players set @s obl.ghost_ship.grenade_fuse 30


###  О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
effect clear @s[tag=obl.custom_slowness] slowness
effect clear @s[tag=obl.custom_blindness] blindness
tag @e[type=#obl:parryable] remove obl.temp.same_owner
tag @e[type=#obl:parryable] remove obl.temp.reflected
tag @e[type=#obl:parryable] remove obl.projectile.parried
tag @e[type=#obl:parryable] remove obl.parry_strength.1
tag @e[type=#obl:parryable] remove obl.parry_strength.2
tag @e[type=#obl:parryable] remove obl.parry_strength.3
tag @e[type=#obl:parryable] remove obl.power_instead_motion
tag @e[type=#obl:all_mobs] remove obl.reflected
tag @e[type=#obl:all_mobs] remove obl.temp.reflecting
tag @e[type=#obl:all_mobs] remove obl.temp.no_reflected