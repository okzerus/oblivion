# Эта функция для ПЕРВОЙ части парирования (заморозка снаряда, настройка и подготовка к рефлекту)
# Выполняется НА СНАРЯДЕ.

###   П А Р И Р О В А Н И Е
## Выполняется НА парируемом объекте, используя ранее временно-тегнутую сущность как ту, кто парировала.
# Даём этому снаряду тег о том, что он был парирован.
tag @s add obl.parried
# Даём теги сущности которая парировала
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.parry_success
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.parry_success.projectile
# Сохраняем айди сущности, которая парировала этот снаряд, внутрь снаряда
scoreboard players operation @s obl.parried_by_id = @n[type=#obl:all_mobs,tag=obl.temp.parrying] obl.id
# Даём игроку достижения за последовательное парирование
advancement grant @s[tag=obl.temp.parrying,scores={obl.parry.after_tick=1..10}] only obl:advancements/weaponry/shield/additions/multiple_parry
# Даём игроку полсекунды пост-парирования
scoreboard players set @p[tag=obl.temp.parrying] obl.parry.after_tick 11
# Засчитываем игроку одно выполненное парирование
scoreboard players add @p[tag=obl.temp.parrying] obl.parry.count 1
# Добавляем две секунды на рефлект, по истечению которых снаряд автоматически рефлектнется вниз/удалится.
scoreboard players set @s obl.parried_decay 40
# Экран парирования
title @p[tag=obl.temp.parrying] times 1 200 0
title @p[tag=obl.temp.parrying] title {"text":"\uE001","shadow_color":[0,0,0,0]}
title @p[tag=obl.temp.parrying] subtitle ""
# Модификатор скорости
attribute @p[tag=obl.temp.parrying] minecraft:movement_speed modifier add obl.parrying -100 add_value
# Проигрываем звук парирования
execute as @n[type=#obl:all_mobs,tag=obl.temp.parrying] run function obl:tech/parrying/sound


###   О Т Л А Д К А
execute if entity @p[tag=obl.temp.parrying,tag=obl.debug] run say Меня парировали!
execute as @p[tag=obl.temp.parrying,tag=obl.debug] run say Я парировал!


###   З А М О Р О З К А
# Останавливаем снаряд в воздухе всеми возможными способами
tag @s add obl.freeze
#scoreboard players set @s[type=marker,tag=obl.projectile] obl.projectle_progress 0
data merge entity @s {NoGravity:1b,NoAI:1b,Motion:[0.0d,0.0d,0.0d]}
tag @s[type=magma_cube,tag=obl.black_death.charging] add obl.black_death.freeze
execute if entity @s[type=tnt] run function obl:tech/parrying/projectile/list/tnt.modify
data merge entity @s[type=item] {PickupDelay:32767s}
data merge entity @s[type=trident] {DealtDamage:0b}
execute if entity @s[type=shulker_bullet] run summon marker ~ ~ ~ {Tags:[obl.shulker_bullet_teleporter]}
tp @s[type=falling_block] @s
execute if entity @s[type=lightning_bolt] as @n[type=#obl:all_mobs,tag=obl.temp.parrying] at @s run function obl:tech/parrying/projectile/list/lightning_bolt.player_parry


###   С И Л А   П А Р И Р О В А Н И Я
# Для последующего запуска при рефлекте
execute if entity @s[type=#minecraft:arrows] run tag @s add obl.parry_strength.3
execute if entity @s[type=snowball] run tag @s add obl.parry_strength.3
execute if entity @s[type=egg] run tag @s add obl.parry_strength.3
execute if entity @s[type=trident] run tag @s add obl.parry_strength.3
execute if entity @s[type=ender_pearl] run tag @s add obl.parry_strength.3
execute if entity @s[type=firework_rocket] run tag @s add obl.parry_strength.2
execute if entity @s[type=zombie,tag=obl.crystodian] run tag @s add obl.parry_strength.2
execute if entity @s[type=armor_stand,tag=obl.marauder.grenade] run tag @s add obl.parry_strength.2
execute if entity @s[type=fireball] run tag @s add obl.parry_strength.1
execute if entity @s[type=dragon_fireball] run tag @s add obl.parry_strength.2
execute if entity @s[type=small_fireball] run tag @s add obl.parry_strength.2
execute if entity @s[type=item,tag=!obl.item.liquid_bucket] run tag @s add obl.parry_strength.2
execute if entity @s[type=fishing_bobber] run tag @s add obl.parry_strength.3
execute if entity @s[type=#obl:potions] run tag @s add obl.parry_strength.2
execute if entity @s[type=experience_bottle] run tag @s add obl.parry_strength.2
execute if entity @s[type=magma_cube] run tag @s add obl.parry_strength.2
execute if entity @s[type=shulker_bullet] run tag @s add obl.parry_strength.2
execute if entity @s[type=falling_block] run tag @s add obl.parry_strength.1
execute if entity @s[type=llama_spit] run tag @s add obl.parry_strength.2
execute if entity @s[type=wither_skull] run tag @s add obl.parry_strength.2
execute if entity @s[type=tnt] run tag @s add obl.parry_strength.1


###   О Ч И С Т К А
tag @e[type=#obl:all_mobs] remove obl.temp.parrying