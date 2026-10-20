## Функция
tag @s add obl.effect.bleed
# Устанавливаем стандартную длительность эффекта если она не была изменена заранее
scoreboard players set @s[scores={obl.effect.bleed.tick=..0}] obl.effect.bleed.tick 600
# Устанавливаем стандартный интервал до получения урона
scoreboard players set @s[scores={obl.effect.bleed.potency=..0}] obl.effect.bleed.interval 60
# Сила влияет на кол-во получаемого урона за раз
scoreboard players set @s[scores={obl.effect.bleed.potency=..0}] obl.effect.bleed.potency 1
# Интенсивность влияет на интервал перед следующим возможным получением урона
scoreboard players set @s[scores={obl.effect.bleed.intensity=..0}] obl.effect.bleed.intensity 1
# Количество влияет на кол-вол возможных получением урона перед досрочным истечением эффекта
scoreboard players set @s[scores={obl.effect.bleed.count=..0}] obl.effect.bleed.count 1

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