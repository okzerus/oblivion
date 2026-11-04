## Функция
# Если цель уже имела этот эффект, выполняем функцию повышения уровня вместо этой
execute if entity @s[tag=obl.effect.regen] run return run function obl:effect/regen/next_level
# Отменяем эффект если tick не был установлен
execute unless score @s obl.effect.regen.tick matches 1.. run return run tellraw @a[tag=obl.debug] "\n[Отладка] Для правильной работы Регенерации нужно установить значение obl.effect.regen.tick перед инфликтом эффетка.\n"
# Устанавливаем стандартные значения для нового эффекта
tag @s add obl.effect.regen
execute unless score @s obl.effect.regen.potency matches 1.. run scoreboard players set @s obl.effect.regen.potency 1
execute unless score @s obl.effect.regen.intensity matches 1.. run scoreboard players set @s obl.effect.regen.intensity 1
scoreboard players set @s obl.effect.regen.interval 0

## Оповещение над сущностью
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Регенерация!",color:"#CD5CAB"},background:905969664,billboard:"center",Tags:["obl.announce.regen","obl.announcement_marker"]}

## Спецэффекты
# playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 0.7