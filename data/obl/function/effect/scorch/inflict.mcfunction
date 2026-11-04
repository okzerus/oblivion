## Функция
# Если цель уже имела этот эффект, выполняем функцию повышения уровня вместо этой
execute if entity @s[tag=obl.effect.scorch] run return run function obl:effect/scorch/next_level
# Отменяем эффект если tick не был установлен
execute unless score @s obl.effect.scorch.tick matches 1.. run return run tellraw @a[tag=obl.debug] "\n[Отладка] Для правильной работы Ожога нужно установить значение obl.effect.scorch.tick перед инфликтом эффетка.\n"
# Устанавливаем стандартные значения для нового эффекта
tag @s add obl.effect.scorch
execute unless score @s obl.effect.scorch.potency matches 1.. run scoreboard players set @s obl.effect.scorch.potency 1
execute unless score @s obl.effect.scorch.intensity matches 1.. run scoreboard players set @s obl.effect.scorch.intensity 1
scoreboard players set @s obl.effect.scorch.interval 0

## Оповещение над сущностью
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Ожог!",color:"#eb5721"},background:905969664,billboard:"center",Tags:["obl.announce.scorch","obl.announcement_marker"]}

## Оповещение на экран
title @s times 0 30 10
title @s title {"text":"ОЖОГ!","italic":true,"color":"#eb5721"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#c73916"}

## Спецэффекты
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7
particle lava ~ ~0.25 ~ 0.2 0.2 0.2 0 30
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30
particle large_smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30