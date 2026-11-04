## Функция
# Если цель уже имела этот эффект, выполняем функцию повышения уровня вместо этой
execute if entity @s[tag=obl.effect.bleed] run return run function obl:effect/bleed/next_level
# Отменяем эффект если tick не был установлен
execute unless score @s obl.effect.bleed.tick matches 1.. run return run tellraw @a[tag=obl.debug] "\n[Отладка] Для правильной работы Кровотечения нужно установить значение obl.effect.bleed.tick перед инфликтом эффетка.\n"
# Устанавливаем стандартные значения для нового эффекта
tag @s add obl.effect.bleed
execute unless score @s obl.effect.bleed.potency matches 1.. run scoreboard players set @s obl.effect.bleed.potency 1
execute unless score @s obl.effect.bleed.intensity matches 1.. run scoreboard players set @s obl.effect.bleed.intensity 1
scoreboard players set @s obl.effect.bleed.interval 0

## Оповещение над сущностью
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Кровотечение!",color:"#fd1b2a"},background:905969664,billboard:"center",Tags:["obl.announce.bleed","obl.announcement_marker"]}

## Оповещение на экран
title @s times 0 30 10
title @s title {"text":"КРОВОТЕЧЕНИЕ!","italic":true,"color":"#fd1b2a"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#fd1b2a"}

## Спецэффекты
playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.7
# Цвет крови в зависимости от типа моба/кровотечения
execute if entity @s[type=#obl:bleed_red,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:nether_wart_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70
execute if entity @s[type=#obl:bleed_green,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:moss_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70
execute if entity @s[type=#obl:bleed_purple,tag=!obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:warped_wart_block"} ^ ^-.5 ^ 0.2 0.4 0.2 0 70
execute if entity @s[tag=obl.honey_bleeding] anchored eyes run particle block{block_state:"minecraft:honey_block"} ^ ^-.5 ^ 0.2 0.2 0.2 0 70