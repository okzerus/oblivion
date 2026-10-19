###   Н А   С У Щ Н О С Т И
## Предотвращаем урон от падения (убирается в movement/landing)
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 100000 add_value
tag @s add obl.parry.fall_safe
## Рейкастим "накопленную кинетическую энергию" в блоки по направлению взгляда
scoreboard players reset #raycast obl
execute anchored eyes run function obl:tech/parrying/fall/raycast
tag @s remove obl.temp.end_raycast
## Откат парирования
scoreboard players set @s obl.parry.cd 20
## Повреждение щита
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Спецэффекты
function obl:tech/parrying/svfx/reflect.on_entity
## Достижения
function obl:tech/parrying/advancements
## Убираем экран парирования
title @s title ""
## Возвращаем гравитацию игрока
attribute @s minecraft:gravity base reset

###   О Ч И С Т К А
scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=marker,tag=obl.parry.fall_anchor,predicate=obl:matching_score]
scoreboard players set @s obl.parry.tick 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
