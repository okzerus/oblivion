###   Ф У Н К Ц И Я
## Отсчёт длительности эффекта
scoreboard players remove @s obl.effect.bleed.tick 1
## Пассивный откат интервала до следующего возможного получения урона с других источников (при атаке, при ходьбе, и т.д.)
execute if score #2t_passed obl matches 1 run scoreboard players remove @s[scores={obl.effect.bleed.interval=..1}] obl.effect.bleed.interval 1
## Наносим урон, если интервал достиг нуля
execute if score @s obl.effect.bleed.interval matches ..0 run function obl:effect/bleed/damage



###   Ч А С Т И Ц Ы
# Цвет крови в зависимости от типа моба/кровотечения
execute if entity @s[type=#obl:bleed_red,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:nether_wart_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 2
execute if entity @s[type=#obl:bleed_green,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:moss_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 2
execute if entity @s[type=#obl:bleed_purple,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:warped_wart_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 2
execute if entity @s[tag=obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:honey_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 2



###   К О Н Е Ц
execute if score @s obl.effect.bleed.tick matches ..0 run function obl:effect/bleed/end