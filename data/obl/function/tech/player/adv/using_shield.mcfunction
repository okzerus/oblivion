# Из достижения tech/using_shield

###   Б Л О К И Р О В А Н И Е   Щ И Т О М
tag @s add obl.using_shield
## obl.using_shield убирается в последующем тике в on.player.1t
scoreboard players add @s obl.using_shield 1

###   О Т Л А Д К А
execute if score @s obl.using_shield matches 1 run tellraw @s[tag=obl.debug] [{"text":"Начал удерживать щит."}]
execute if score @s obl.using_shield matches 1 run tellraw @s[tag=obl.debug] [{"text":"Могу парировать снаряд!"}]
execute if score @s obl.using_shield matches 5 run tellraw @s[tag=obl.debug] [{"text":"Не могу парировать снаряд."}]
execute if score @s obl.using_shield matches 5 run tellraw @s[tag=obl.debug] [{"text":"Могу парировать директ!"}]
execute if score @s obl.using_shield matches 15 run tellraw @s[tag=obl.debug] [{"text":"Не могу парировать директ."}]

###   К А Д Р Ы   П А Р И Р О В А Н И Я
## Пропускает кадры парирования если парирование на откате (ВСЁ ПОТОМУ ЧТО Я УМНЫЙ ДЕЛАЮ ВСЁ ПРАВИЛЬНО):
execute if score @s obl.parry.cd matches 1.. run scoreboard players set @s obl.using_shield 16
## Убирает теги выдаваемые ниже:
tag @s remove obl.can_parry.projectile
tag @s remove obl.can_parry.direct
## Кадр парирования для снарядов:
execute if score @s obl.using_shield matches 1..5 run tag @s add obl.can_parry.projectile
## Кадр парирования для контактных:
execute if score @s obl.using_shield matches 5..15 run tag @s add obl.can_parry.direct

###   О Ч И С Т К А
advancement revoke @s only obl:tech/using_shield