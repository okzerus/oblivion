###   И Щ Е М   А Й Д И
tag @s add obl.temp.reflecting
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
tag @e[type=#obl:all_mobs,predicate=obl:matching_score.parrying] add obl.temp.reflected


###   Н А   Ц Е Л И
## Негативные дебаффы
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run attribute @s minecraft:movement_speed modifier add obl.parrying.victim_debuffs.movement -0.04 add_value
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run attribute @s minecraft:attack_damage modifier add obl.parrying.victim_debuffs.damage -2 add_value
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run attribute @s minecraft:attack_speed modifier add obl.parrying.victim_debuffs.fatigue -0.6 add_value
effect give @e[type=#obl:all_mobs,tag=obl.temp.reflected] blindness 1 9 true
## Урон
# Считываем текущий урон парировавшей сущности в счёт
execute store result score #parry_damage obl run attribute @s minecraft:attack_damage get
tellraw @p[tag=obl.debug] [{"text":"[Контактный урон] Извлечено урона: "},{"score":{"name":"#parry_damage","objective":"obl"}}]
# Минимальный урон парирования: 1
execute if score #parry_damage obl matches ..1 run scoreboard players set #parry_damage obl 1
# Добавляем базовый урон парирования
scoreboard players add #parry_damage obl 4
tellraw @p[tag=obl.debug] [{"text":"[Контактный урон] Финальный урон: "},{"score":{"name":"#parry_damage","objective":"obl"}}]
# Сохраняем модифицированный урон в хранилище
execute store result storage obl:damage value int 1 run scoreboard players get #parry_damage obl
# Наносим урон
function obl:tech/parrying/direct/damage with storage obl:damage
## Перемещение камеры
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected,tag=!obl.boss,type=!vex,type=!phantom] at @s run tp @s ~ ~ ~ ~ ~-40
## Частицы
execute at @e[type=#obl:all_mobs,tag=obl.temp.reflected] run particle minecraft:end_rod ~ ~.5 ~ 0.3 0.6 0.3 0 20


###   Н А   С У Щ Н О С Т И
tag @s add obl.temp.direct_parrying
## Откат парирования
# Стандартный откат
scoreboard players set @s obl.parry.cd 60
# Если парированный снаряд был от игрока, время отката утраивается (PvP баланс)
execute if entity @e[type=player,tag=obl.temp.reflected] run scoreboard players set @s obl.parry.cd 240
## Повреждение щита
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Положительные эффекты
execute if entity @e[type=#obl:parryable,tag=obl.temp.reflected,tag=!obl.temp.same_owner,tag=!obl.no_parry_buffs] run function obl:tech/parrying/buff
## Спецэффекты
function obl:tech/parrying/svfx/reflect.on_entity
## Достижения
function obl:tech/parrying/advancements
## Убираем экран парирования
title @s title ""
## Убираем модификатор скорости
attribute @s minecraft:movement_speed modifier remove obl.parrying


###  О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
scoreboard players reset @e[type=#obl:all_mobs,tag=obl.temp.reflected] obl.parried_by_id
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run attribute @s minecraft:movement_speed modifier remove obl.parried
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run attribute @s minecraft:attack_damage modifier remove obl.parried
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected] run data merge entity @s[type=!player] {NoAI:0b,NoGravity:0b}
tag @e[type=#obl:all_mobs,tag=obl.temp.reflected] remove obl.parried
tag @e[type=#obl:all_mobs] remove obl.temp.reflected
tag @s remove obl.temp.parried
tag @s remove obl.temp.direct_parrying
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct