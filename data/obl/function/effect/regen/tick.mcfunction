###   Ф У Н К Ц И Я
## Отсчёт длительности эффекта
scoreboard players remove @s obl.effect.regen.tick 1
## Пассивный откат интервала до следующего возможного пополнения ХП
scoreboard players remove @s[scores={obl.effect.regen.interval=1..}] obl.effect.regen.interval 1
## Пополняем ХП, если интервал достиг нуля
execute if score @s obl.effect.regen.interval matches ..0 run function obl:effect/regen/calculate_heal
## Спецэффекты
particle minecraft:dust{color:[0.804,0.361,0.671],scale:0.75} ~ ~0.9 ~ 0.2 0.45 0.2 0 1 normal

###   К О Н Е Ц
execute if score @s obl.effect.regen.tick matches ..0 run function obl:effect/regen/end