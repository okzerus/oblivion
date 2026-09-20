###   В О С С Т А Н О В Л Е Н И Е   Г Р А В И Т А Ц И И
execute store result storage obl:fall value double 0.000001 run scoreboard players get @s obl.parry.fall_gravity
function obl:tech/parrying/fall/restore_gravity with storage obl:fall

###   Б Е З О П А С Н О Е   П Р И З Е М Л Е Н И Е
# Тот же запас, что и при успехе — иначе после урона от провала игрок ещё раз получит урон при приземлении
attribute @s minecraft:safe_fall_distance modifier add obl.parrying 1000 add_value
tag @s add obl.parry.fall_safe

###   У Р О Н
scoreboard players operation #fall_damage obl = @s obl.parry.fall_count
scoreboard players operation #fall_damage obl *= #three obl.const
execute store result storage obl:damage value int 1 run scoreboard players get #fall_damage obl
function obl:tech/parrying/fall/damage with storage obl:damage

###   О Т К А Т
scoreboard players set @s obl.parry.cd 120

## Убираем экран парирования
title @s title ""

###   О Т Л А Д К А
tellraw @s[tag=obl.debug] [{"text":"Провалил парирование падения."}]

###   О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
scoreboard players set @s obl.parry.fall_count 0
tag @s remove obl.parry_success
tag @s remove obl.parry_success.fall
