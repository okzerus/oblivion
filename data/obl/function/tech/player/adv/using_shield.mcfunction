# Из достижения tech/using_shield

###   Б Л О К И Р О В А Н И Е   Щ И Т О М
tag @s add obl.using_shield
## obl.using_shield убирается в последующем тике в on.player.1t
scoreboard players add @s obl.using_shield 1
## Отладка
execute if score @s obl.using_shield matches 1 run tellraw @s[tag=obl.debug] [{"text":"Начал удерживать щит."}]

###   К А Д Р   П А Р И Р О В А Н И Я
## Пропускает кадры парирования если парирование на откате (ВСЁ ПОТОМУ ЧТО Я УМНЫЙ ДЕЛАЮ ВСЁ ПРАВИЛЬНО):
scoreboard players set @s[scores={obl.parry.cd=1..,obl.using_shield=..6}] obl.using_shield 6
## Убираем теги перед выдачей:
tag @s remove obl.can_parry
## Кадр парирования:
execute if score @s obl.using_shield matches 1 run function obl:tech/parrying/svfx/sfx.shield_up
execute if score @s obl.using_shield matches 1..5 run tag @s add obl.can_parry
execute if score @s obl.using_shield matches 6 run function obl:tech/parrying/svfx/sfx.parry_frame_end
## Отладка
execute if score @s obl.using_shield matches 1 run tellraw @s[tag=obl.debug] [{"text":"Могу парировать!"}]
execute if score @s obl.using_shield matches 6 run tellraw @s[tag=obl.debug] [{"text":"Не могу парировать."}]

###   О Ч И С Т К А
advancement revoke @s only obl:tech/using_shield