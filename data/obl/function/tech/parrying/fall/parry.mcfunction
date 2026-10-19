###   П А Р И Р О В А Н И Е
tag @s add obl.parry_success
tag @s add obl.parry_success.fall
## Экран парирования
title @s times 1 200 0
title @s title {"text":"\uE001","shadow_color":[0,0,0,0]}
title @s subtitle ""
## Заморозка
# Обнуляем гравитацию
attribute @s minecraft:gravity base set 0
# Сбрасываем набранную инерцию падения
tp @s @s
## Якорь позиции
# Создаём маркер, привязанный по айди, на который игрок телепортируется каждый тик (не даёт сместиться в стороны)
execute at @s run summon marker ~ ~ ~ {Tags:["obl.parry.fall_anchor","obl.needs_match","obl.temp.set_id"]}
scoreboard players operation @n[type=marker,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=marker] remove obl.temp.set_id
# Проигрываем звук парирования
function obl:tech/parrying/sound
## Отладка
tellraw @s[tag=obl.debug] [{"text":"Парирую падение!"}]
