###   О П О В Е Щ Е Н И Е
title @s times 0 10 10
title @s title {"text":""}
## Сохранить рандомное число для случайных насмешек
execute store result score rng obl run random value 1..10
execute if score rng obl matches 1 run title @s subtitle {"text":"АНСКИЛЛ! ХУЖЕ МОЖЕШЬ?","italic":true,"color":"red"}
execute if score rng obl matches 2 run title @s subtitle {"text":"ПОЗДНО, ЗАБЕЙ ХУЙ.","italic":true,"color":"red"}
execute if score rng obl matches 3 run title @s subtitle {"text":"ПИЗДОС ИНВАЛИДОВ ПОВЕЗЛИ","italic":true,"color":"red"}
execute if score rng obl matches 4 run title @s subtitle {"text":"ПРОЕБАЛСЯ ТЫ, ЛЕГЕНДА","italic":true,"color":"red"}
execute if score rng obl matches 5 run title @s subtitle {"text":"РОГА БЛЯТЬ ПОМЕШАЛИ, БАРАН?","italic":true,"color":"red"}
execute if score rng obl matches 6 run title @s subtitle {"text":"УСПЕВАШКА ИЗ ТЕБЯ ХУЁВАЯ.","italic":true,"color":"red"}
execute if score rng obl matches 7 run title @s subtitle {"text":"'ПИНГУЕТ' БУ-СУКА-ХУ.","italic":true,"color":"red"}
execute if score rng obl matches 8 run title @s subtitle {"text":"ПРОСТО УДАЛИ ИГРУ.","italic":true,"color":"red"}
execute if score rng obl matches 9 run title @s subtitle {"text":"ТЫ ПРОСПАЛ, БОТЯРА.","italic":true,"color":"red"}
execute if score rng obl matches 1 run title @s subtitle {"text":"ТОРМОЗ ЕБУЧИЙ, ГГ.","italic":true,"color":"red"}
playsound minecraft:entity.witch.celebrate player @s ~ ~ ~ 2 2