## Добавляем +1 к кол-ву парирований одной и той же наковальне
scoreboard players add @s obl.parried_anvil.count 1

## Добавляем растущей нестабильности для наковальни на конкретном кол-ве парирований
# Устанавливаем кастомный диапазон рандомайзера
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set #range obl.rng 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set #range obl.rng 500
# Используем рандомайзер
execute if score @s obl.parried_anvil.count matches 10..49 store result storage obl:rng range int 1 run scoreboard players get #range obl.rng
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:macro/rng with storage obl:rng
# Отнимаем половину от ранее установленного диапазона для шанса на негативный результат
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players remove #value obl.rng 150
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players remove #value obl.rng 250
# Применяем результат к движению наковальни
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[0] double 0.0005 run scoreboard players get #value obl.rng

## Добавляем растущей нестабильности для наковальни на конкретном кол-ве парирований
# Устанавливаем кастомный диапазон рандомайзера
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set #range obl.rng 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set #range obl.rng 500
# Используем рандомайзер
execute if score @s obl.parried_anvil.count matches 10..49 store result storage obl:rng range int 1 run scoreboard players get #range obl.rng
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:macro/rng with storage obl:rng
# Отнимаем половину от ранее установленного диапазона для шанса на негативный результат
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players remove #value obl.rng 150
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players remove #value obl.rng 250
# Применяем результат к движению наковальни
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[2] double 0.0005 run scoreboard players get #value obl.rng

## Добавляем растущей нестабильности для наковальни на конкретном кол-ве парирований
# Устанавливаем кастомный диапазон рандомайзера
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set #range obl.rng 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set #range obl.rng 500
# Используем рандомайзер
execute if score @s obl.parried_anvil.count matches 10..49 store result storage obl:rng range int 1 run scoreboard players get #range obl.rng
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:macro/rng with storage obl:rng
# Отнимаем половину от ранее установленного диапазона для шанса на негативный результат
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players remove #value obl.rng 150
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players remove #value obl.rng 250
# Применяем результат к движению наковальни
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[1] double 0.002 run scoreboard players get #value obl.rng

# Запускаем наковальню в космос на финальном парировании
execute if score @s obl.parried_anvil.count matches 50 run data merge entity @s {Motion:[0.0d,3.0d,0.0d]}