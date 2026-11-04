## Функция
# Если цель уже имела этот эффект, не выполняем фунцию
execute if entity @s[tag=obl.effect.stun] run return 0
# Если источник оглушения - Сотрясение, устанавливаем длительность оглушения равную кол-ву тремора в тиках.
execute if entity @s[tag=obl.temp.from_burst] run scoreboard players operation @s obl.effect.stun.tick = @s obl.effect.tremor.count
# Отменяем эффект если tick не был установлен
execute unless score @s obl.effect.stun.tick matches 1.. run return run tellraw @a[tag=obl.debug] "\n[Отладка] Для правильной работы Оглушения нужно установить значение obl.effect.stun.tick перед инфликтом эффетка.\n"
tag @s add obl.effect.stun
scoreboard players operation @s obl.effect.stun.max = @s obl.effect.stun.tick
attribute @s minecraft:jump_strength modifier add obl:stun -99999999 add_value
attribute @s minecraft:attack_damage modifier add obl:stun -99999999 add_value
attribute @s minecraft:attack_speed modifier add obl:stun -99999999 add_value
attribute @s minecraft:movement_speed modifier add obl:stun -99999999 add_value
attribute @s minecraft:block_interaction_range modifier add obl:stun -99999999 add_value

## Оповещение над сущностью
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Оглушён!",color:"#75aca4"},background:905969664,billboard:"center",Tags:["obl.announce.stun","obl.announcement_marker"]}

## Спецэффекты
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.7
particle crit ~ ~1.5 ~ 0.5 1 0.5 0.01 40
particle enchanted_hit ~ ~1.5 ~ 0.5 1 0.5 0.01 80