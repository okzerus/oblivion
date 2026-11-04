attribute @s minecraft:max_health modifier remove obl:to_heal

# Копируем текущее и максимальное ХП, умноженное на 10.000
execute store result score #max obl run attribute @s minecraft:max_health get 10000
execute store result score #current obl run data get entity @s Health 10000

# Если текущее ХП равняется или выше максимального, отменяем функцию
execute if score #max obl <= #current obl run return 0

execute unless score #heal_by obl matches 1.. run scoreboard players set #heal_by obl 1
scoreboard players operation #heal_by obl *= #10000 obl.const
scoreboard players operation #max obl -= #heal_by obl
scoreboard players operation #max obl -= #current obl

# Если значение хила полностью вылечит игрока, просто лечим игрока и отменяем функцию
tag @s[tag=obl.effect.regen] add obl.temp.from_regen
execute if score #max obl matches ..0 run return run effect give @s minecraft:instant_health 1 49 true

# Лечим игрока
execute store result storage obl:to_heal x double -0.0001 run scoreboard players get #max obl
function obl:effect/regen/macro with storage obl:to_heal
effect give @s minecraft:instant_health 1 49 true
tag @s add obl.temp.healed
scoreboard players reset #max obl
scoreboard players reset #current obl