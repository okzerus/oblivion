###   С Т А Р Т
tag @s add obl.parry_success
tag @s add obl.parry_success.fall

## Экран парирования
title @s times 1 200 0
title @s title {"text":"","shadow_color":[0,0,0,0]}
title @s subtitle ""

###   З А М О Р О З К А
## Сохраняем базовое значение гравитации в счёт и обнуляем её
execute store result score @s obl.parry.fall_gravity run attribute @s minecraft:gravity base get 1000000
attribute @s minecraft:gravity base set 0.0
## Сбрасываем набранную инерцию падения
tp @s @s

###   Я К О Р Ь   П О З И Ц И И
## Маркер, привязанный по айди, на который игрок телепортируется каждый тик (не даёт сместиться в стороны)
execute at @s run summon marker ~ ~ ~ {Tags:["obl.parry.fall_anchor"]}
scoreboard players operation @e[type=marker,tag=obl.parry.fall_anchor,limit=1,sort=nearest] obl.parried_by_id = @s obl.id

###   З В У К
function obl:tech/parrying/sound

###   О Т Л А Д К А
tellraw @s[tag=obl.debug] [{"text":"Парирую падение!"}]
