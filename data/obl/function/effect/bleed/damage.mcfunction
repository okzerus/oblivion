###   Ф У Н К Ц И Я
## Устанавливаем интервал до следующего получения урона, в зависимости от интенсивности кровотечения
scoreboard players set @s[scores={obl.effect.bleed.intensity=1}] obl.effect.bleed.interval 250
scoreboard players set @s[scores={obl.effect.bleed.intensity=2}] obl.effect.bleed.interval 200
scoreboard players set @s[scores={obl.effect.bleed.intensity=3}] obl.effect.bleed.interval 150
scoreboard players set @s[scores={obl.effect.bleed.intensity=4}] obl.effect.bleed.interval 100
scoreboard players set @s[scores={obl.effect.bleed.intensity=5}] obl.effect.bleed.interval 50
## Убираем 1 счёт кровотечения
scoreboard players remove @s obl.effect.bleed.count 1


###   У Р О Н
## Наносим урон в зависимости от силы кровотечения.
# Сохраняем урон в хранилище даты
execute store result storage obl:damage value int 1 run scoreboard players get @s obl.effect.bleed.potency
# Наносим урон
function obl:effect/bleed/macro with storage obl:damage
## Спецэффекты
# Цвет крови в зависимости от типа моба/кровотечения
execute if entity @s[type=#obl:bleed_red,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:nether_wart_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70
execute if entity @s[type=#obl:bleed_green,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:moss_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70
execute if entity @s[type=#obl:bleed_purple,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:warped_wart_block"} ^ ^-.5 ^ 0.2 0.4 0.2 0 70
execute if entity @s[tag=obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:honey_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70



###   К О Н Е Ц
execute if score @s obl.effect.bleed.count matches 0 run function obl:effect/bleed/end