###   П А Р И Р О В А Н И Е
## Выполняется НА парируемом объекте, используя ранее временно-тегнутую сущность как ту, кто парировала.
# Даём этому снаряду тег о том, что он был парирован.
tag @s add obl.projectile.parried
# Даём теги сущности которая парировала
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.parry_success
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.parry_success.projectile
# Отключаем директ парирование на время парирования снаряда
tag @n[type=#obl:all_mobs,tag=obl.temp.parrying] add obl.disable.direct_parry
# Перепривязываем айди снаряда к айди сущности, которая его парировала
scoreboard players operation @s obl.id.reflect = @n[type=#obl:all_mobs,tag=obl.temp.parrying] obl.id
# Даём игроку достижения за последовательное парирование
advancement grant @s[tag=obl.temp.parrying,scores={obl.parry.after_tick=30..39}] only obl:advancements/weaponry/shield/additions/multiple_parry
# Даём игроку две секунды пост-парирования
scoreboard players set @p[tag=obl.temp.parrying] obl.parry.after_tick 40
# Засчитываем игроку одно выполненное парирование
scoreboard players add @p[tag=obl.temp.parrying] obl.parry.count 1
# Даём игроку визуальные дебаффы во время парирования
effect give @p[tag=obl.temp.parrying] slowness 2 9 true
tag @p[tag=obl.temp.parrying,tag=!obl.vanilla.slowness] add obl.custom_slowness
effect give @p[tag=obl.temp.parrying] blindness 5 9 true
tag @p[tag=obl.temp.parrying,tag=!obl.vanilla.darkness] add obl.custom_darkness
# Проигрываем звук парирования
execute as @n[type=#obl:all_mobs,tag=obl.temp.parrying] run function obl:tech/parrying/sound


###   О Т Л А Д К А
execute if entity @p[tag=obl.temp.parrying,tag=obl.debug] run say Меня парировали!
execute as @p[tag=obl.temp.parrying,tag=obl.debug] run say Я парировал!



###   З А М О Р О З К А
# Останавливаем снаряд в воздухе всеми возможными способами
tag @s add obl.dont_move
scoreboard players set @s[type=marker,tag=obl.projectile] obl.projectle_progress 0
data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}
data merge entity @s[tag=obl.parryable_mob] {NoAI:1b}
execute if entity @s[type=magma_cube,tag=obl.black_death.charging] run tag @s add obl.black_death.dont_move
execute if entity @s[type=tnt] run function obl:tech/parrying/projectile/list/tnt.modify
execute if entity @s[type=item] run data merge entity @s {PickupDelay:32767s}
execute if entity @s[type=trident] run data merge entity @s {DealtDamage:0b}
execute if entity @s[type=shulker_bullet] run summon marker ~ ~ ~ {Tags:[obl.shulker_bullet_teleporter]}
execute if entity @s[type=falling_block] run tp @s @s
execute if entity @s[type=lightning_bolt] as @n[type=#obl:all_mobs,tag=obl.temp.parrying] at @s run function obl:tech/parrying/projectile/list/lightning_bolt.player_parry


###   С И Л А   П А Р И Р О В А Н И Я
# Для последующего запуска после рефлекта
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
execute if entity @s[type=item] run tag @s add obl.parry_strength.2
execute if entity @s[type=fishing_bobber] run tag @s add obl.parry_strength.3
execute if entity @s[type=#obl:potions] run tag @s add obl.parry_strength.2
execute if entity @s[type=experience_bottle] run tag @s add obl.parry_strength.2
execute if entity @s[type=magma_cube] run tag @s add obl.parry_strength.2
execute if entity @s[type=shulker_bullet] run tag @s add obl.parry_strength.2
execute if entity @s[type=falling_block] run tag @s add obl.parry_strength.1
execute if entity @s[type=llama_spit] run tag @s add obl.parry_strength.2
execute if entity @s[type=wither_skull] run tag @s add obl.parry_strength.2
execute if entity @s[type=tnt] run tag @s add obl.parry_strength.1
execute if entity @s[type=wither_skull] run tag @s add obl.power_instead_motion
execute if entity @s[type=small_fireball] run tag @s add obl.power_instead_motion
execute if entity @s[type=dragon_fireball] run tag @s add obl.power_instead_motion
execute if entity @s[type=fireball] run tag @s add obl.power_instead_motion


###   О Ч И С Т К А
tag @e[type=#obl:all_mobs] remove obl.temp.parrying