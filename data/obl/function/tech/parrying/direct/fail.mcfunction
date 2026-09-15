###   С Т А Р Т
# Добавляем тег на сущность для дальнейшего референса
tag @s add obl.temp.failed_parry
## Повреждение щита
tag @s add obl.temp.parry_fail
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Откат парирования
# Стандартный откат
scoreboard players set @s obl.parry.cd 120
# Если парированный снаряд был от игрока, время отката утраивается (PvP баланс)
execute if entity @e[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.projectile.player_owner,tag=!obl.temp.same_owner] run scoreboard players set @s obl.parry.cd 360
## Убираем экран парирования
title @s title ""
## Убираем модификатор скорости
attribute @s minecraft:movement_speed modifier remove obl.parrying
## Спецэффекты
execute as @e[type=#obl:all_mobs,tag=obl.temp.reflected,tag=!obl.boss,type=!vex,type=!phantom] at @s run tp @s ~ ~ ~ ~ ~-40
particle minecraft:dust{color:[0.6,0.0,0.0],scale:0.8} ~ ~.5 ~ 0.3 0.6 0.3 0 50
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 0.8
particle minecraft:end_rod ~ ~.5 ~ 0.3 0.6 0.3 0 20
## Частицы
## Отладка
tellraw @s[tag=obl.debug] [{"text":"Провалил парирование."}]

###   Н А   Ц Е Л И
# Ищем парированные цели по айди
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
tag @e[tag=obl.parried,predicate=obl:matching_score.parrying] add obl.temp.target
## Убираем модификаторы
execute as @e[type=#obl:all_mobs,tag=obl.temp.target] run attribute @s minecraft:movement_speed modifier remove obl.parried
execute as @e[type=#obl:all_mobs,tag=obl.temp.target] run attribute @s minecraft:attack_damage modifier remove obl.parried
## Вместо нанесения урона по цели, наносим урон по сущности, провалившей парирование, от лица цели
# Считываем текущий урон цели в счёт
execute as @n[type=#obl:all_mobs,tag=obl.temp.target] run say asd
execute store result score #parry_damage obl run attribute @n[type=#obl:all_mobs,tag=obl.temp.target] minecraft:attack_damage get
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
## Убираем экран парирования
title @a[tag=obl.temp.target] title ""


###   О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
scoreboard players reset @e[type=#obl:all_mobs,tag=obl.temp.target] obl.parried_by_id
execute as @e[type=#obl:all_mobs,tag=obl.temp.target] run data merge entity @s[type=!player] {NoAI:0b,NoGravity:0b}
tag @e[type=#obl:all_mobs,tag=obl.temp.target] remove obl.parried
tag @e[type=#obl:all_mobs] remove obl.temp.target
tag @s remove obl.temp.parried
tag @s remove obl.temp.direct_parrying
tag @s remove obl.temp.failed_parry
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct