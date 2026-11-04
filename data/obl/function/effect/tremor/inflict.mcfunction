## Функция
# Отменяем эффект если #tremor_count/#tremor_max не был установлен
execute unless score #tremor_count obl matches 1.. unless score #tremor_max obl matches 1.. run return run tellraw @a[tag=obl.debug] "\n[Отладка] Для правильной работы Тремора нужно установить значение #tremor_count obl и #tremor_max перед инфликтом эффетка.\n"

## Оповещение над сущностью
scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=text_display,tag=obl.announce.tremor,predicate=obl:matching_score]

execute unless entity @s[tag=obl.effect.tremor] anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.75 ~ {text:{text:"Тремор!",color:"#fbe545"},background:905969664,billboard:"center",Tags:["obl.announce.tremor","obl.announcement_marker","obl.temp.set_id"]}
execute if score @s obl.effect.tremor.count = #tremor_max obl run scoreboard players set #tremor_count obl 0
execute store result storage obl:temp x int 1 run scoreboard players get #tremor_count obl
scoreboard players operation #tremor_final obl = @s obl.effect.tremor.count
scoreboard players operation #tremor_final obl += #tremor_count obl
scoreboard players operation #tremor_final obl < #tremor_max obl
scoreboard players operation @s obl.effect.tremor.count > #tremor_final obl
execute if score #tremor_final obl matches 101.. run scoreboard players set #tremor_final obl 100
execute store result storage obl:temp y int 1 run scoreboard players get #tremor_final obl
execute store result storage obl:temp z int 1 run scoreboard players get #tremor_max obl
execute anchored eyes positioned ^ ^ ^ positioned ~ ~.5 ~ run function obl:effect/tremor/text_display with storage obl:temp
scoreboard players operation @e[type=text_display,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=text_display] remove obl.temp.set_id

## Оповещение на экран
# Первый инфликт
title @s[tag=!obl.effect.tremor] times 0 30 10
title @s[tag=!obl.effect.tremor] title {"text":"ТРЕМОР!","italic":true,"color":"#fbe545"}
# Второй+ инфликт
title @s[tag=obl.effect.tremor] times 0 7 0
title @s[tag=obl.effect.tremor] title ""

title @s subtitle [{"text":"Тремор: ","italic":false,"color":"#fbe545"},{"text":"+","italic":false,"color":"#ffef7d"},{"score":{"name":"#tremor_count","objective":"obl"},"color":"#ffef7d"},{"text":" | ","italic":false,"color":"#ffef7d"},{"score":{"name":"#tremor_final","objective":"obl"},"color":"#ffef7d"}]

## Спецэффекты
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 2

## Применяем эффект
scoreboard players set @s obl.effect.tremor.tick 200
scoreboard players reset @s obl.effect.tremor.decay
tag @s add obl.effect.tremor