###   С Т А Р Т
## Выдача тегов и айди
execute if entity @s[tag=!obl.projectile.init,type=!#obl:parryable_mobs] run function obl:tech/parrying/projectile/init


###   П Р А В И Л А   С Н А Р Я Д О В
## Обрабатываем особые правила конкретных снарядов:
# Стрела/Трезубец: Если воткнуты в землю, даём тег; если нет, забираем тег. Если воткнуты в землю после рефлекта, забираем тег рефлекта
tag @s[type=#obl:parryable.inground_check,tag=!obl.in_ground,nbt={inGround:1b}] add obl.in_ground
tag @s[type=#obl:parryable.inground_check,tag=obl.in_ground,nbt=!{inGround:1b}] remove obl.in_ground
tag @s[type=#obl:parryable.inground_check,tag=obl.projectile.reflected,tag=obl.in_ground] remove obl.projectile.reflected
# Мобы/Предмет/Динамит: Если на земле, даём тег; если нет, забираем тег
tag @s[type=#obl:parryable.onground_check,tag=!obl.on_ground,predicate=obl:on.ground] add obl.on_ground
tag @s[type=#obl:parryable.onground_check,tag=obl.on_ground,predicate=!obl:on.ground] remove obl.on_ground
# Трезубец: Если попал в цель после рефлекта, выполняем функцию.
execute if entity @s[type=trident,tag=obl.projectile.reflected,tag=!obl.dealt_damage,nbt={DealtDamage:1b}] run function obl:tech/parrying/projectile/list/trident.hit
# Снаряд шалкера: В состоянии парирования, ежетиково устанавливаем движение на 0 и тепаем к ранее созданному маркеру (других способов остановить снаряд попросту нет)
data merge entity @s[type=shulker_bullet,tag=obl.projectile.parried] {Motion:[0.0d,0.0d,0.0d]}
tp @s[type=shulker_bullet,tag=obl.projectile.parried] @n[type=marker,tag=obl.shulker_bullet_teleporter]
# Поплавок: В состоянии парирования, ежетиково устанавливаем движение на 0
data merge entity @s[type=fishing_bobber,tag=obl.projectile.parried] {Motion:[0.0d,0.0d,0.0d]}
# Фейерверк: В состоянии парирования, ежетиково устанавливаем движение на 0
data merge entity @s[type=firework_rocket,tag=obl.projectile.parried] {Motion:[0.0d,0.0d,0.0d]}
# Предмет: После парирования, выполняем функции в зависимости от типа предмета
execute if entity @s[type=item,tag=obl.projectile.reflected] run function obl:tech/parrying/projectile/list/item/tick
## Дополнительные проверки:
# Убираем тег рефлекта с предметов, воткнувшихся или приземлившихся на землю
tag @s[tag=obl.projectile.reflected,tag=obl.in_ground] remove obl.projectile.reflected
tag @s[tag=obl.projectile.reflected,tag=obl.on_ground] remove obl.projectile.reflected


###   П О И С К   П А Р И Р У Е М О Й   С У Щ Н О С Т И
## Общий чек всех снарядов
# Выполняется только, если: Этот снаряд может двигаться, не является непарируемым, не воткнут/лежит на земле, и не нанёс урон (трезубец)
execute if entity @s[type=#obl:parryable_projectiles,tag=!obl.freeze,tag=!obl.projectile.unparryable,tag=!obl.in_ground,tag=!obl.on_ground,tag=!obl.trident.dealt_damage] run function obl:tech/parrying/projectile/list/generic
## Отдельные чеки снарядов
# Молния (Инвертированный чек)
execute if entity @s[type=lightning_bolt,tag=!obl.freeze] run function obl:tech/parrying/projectile/list/lightning_bolt
# Эндер-жемчуг (Удлинённый чек)
execute if entity @s[type=ender_pearl,tag=!obl.freeze] run function obl:tech/parrying/projectile/list/ender_pearl
## Чек всех парируемых мобов
# Перенаправляет на общий чек только особых мобов, которых можно парировать при конкретных условиях
execute if entity @s[type=#obl:parryable_mobs] run function obl:tech/parrying/projectile/list/mobs

###   З А С Т Р Я В Ш И Е   С Н А Р Я Д Ы
## Избавляемся от застрявших снарядов - по истечению obl.parried_decay, автоматически рефлектим снаряд прямо вниз/удаляем. 
## На случай, если с парировавшей сущностью что-то произошло до рефлекта.
scoreboard players remove @s[tag=obl.projectile.parried,scores={obl.parried_decay=1..}] obl.parried_decay 1
execute if entity @s[tag=obl.projectile.parried,scores={obl.parried_decay=0}] run function obl:tech/parrying/projectile/decay

###   Ч А С Т И Ц Ы
## Если снаряд парирован и в полёте, излучает частицы
execute if entity @s[tag=obl.projectile.reflected,tag=!obl.freeze] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 3 force @a