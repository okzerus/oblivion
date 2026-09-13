###   П О В Р Е Ж Д Е Н И Е   Щ И Т А
# Узнаём, в какой руке удерживается щит
execute if items entity @s weapon.mainhand shield unless items entity @s weapon.offhand shield run tag @s add obl.temp.mainhand
execute if items entity @s weapon.offhand shield unless items entity @s weapon.mainhand shield run tag @s add obl.temp.offhand
# Сохраняем уровень зачарования Прочности на щите
execute store result score #temp.unbreaking_level obl run data get entity @s[tag=obl.temp.offhand,tag=!obl.temp.parry_fail] SelectedItem.components.minecraft:enchantments."minecraft:unbreaking"
execute store result score #temp.unbreaking_level obl run data get entity @s[tag=obl.temp.mainhand,tag=!obl.temp.parry_fail] equipment.offhand.components.minecraft:enchantments."minecraft:unbreaking"

## Используем уровень зачарования Прочности как модификатор диапазона случайного числа
# Обнуляем диапазон перед работой
scoreboard players reset #range obl.rng
# Уровень прочности в диапазон
scoreboard players operation #range obl.rng = #temp.unbreaking obl
# +1 к диапазону
scoreboard players add #range obl.rng 1
# Сохраняем диапазон в хранилище даты
execute store result storage obl:rng range int 1 run scoreboard players get #range obl.rng
# Если диапазон 2 или больше, рандомизируем число с помощью макро
execute unless entity @s[tag=obl.temp.parry_fail] if score #range obl.rng matches 2.. run function obl:macro/rng with storage obl:rng
# Если диапазон 1, ставим число на 1
execute unless entity @s[tag=obl.temp.parry_fail] if score #range obl.rng matches 1 run scoreboard players set #value obl.rng 1
# Отладка
tellraw @s[tag=obl.debug,tag=!obl.temp.parry_fail] [{"text":"[Повреждение щита] Уровень прочности: "},{"score":{"name":"#temp.unbreaking_level","objective":"obl"}}]
tellraw @s[tag=obl.debug,tag=!obl.temp.parry_fail] [{"text":"[Повреждение щита] Диапазон: "},{"score":{"name":"#range","objective":"obl.rng"}}]
tellraw @s[tag=obl.debug,tag=!obl.temp.parry_fail] [{"text":"[Повреждение щита] Выпало число: "},{"score":{"name":"#value","objective":"obl.rng"}}]
tellraw @s[tag=obl.debug,tag=obl.temp.parry_fail] [{"text":"[Повреждение щита] Парирование провалено, -30 прочности"}]

# Если выпало 1, щит теряет одну прочность с помощью модификатора предметов.
execute if score #value obl.rng matches 1 run item modify entity @s[tag=obl.temp.mainhand,tag=!obl.temp.parry_fail] weapon.mainhand obl:shield_damage
execute if score #value obl.rng matches 1 run item modify entity @s[tag=obl.temp.offhand,tag=!obl.temp.parry_fail] weapon.offhand obl:shield_damage
# Если источник повреждения - неуспешное парирование, щит теряет 30 прочности в любом случае
item modify entity @s[tag=obl.temp.mainhand,tag=obl.temp.parry_fail] weapon.mainhand obl:shield_damage.fail
item modify entity @s[tag=obl.temp.offhand,tag=obl.temp.parry_fail] weapon.offhand obl:shield_damage.fail

# Если прочность щита достигла нуля (урон 336+), "ломаем" щит
execute if items entity @s weapon.* shield[minecraft:damage~{damage:{min:336}}] run tag @s add obl.temp.break
item replace entity @s[tag=obl.temp.mainhand,tag=obl.temp.break] weapon.mainhand with air
item replace entity @s[tag=obl.temp.offhand,tag=obl.temp.break] weapon.offhand with air
execute if entity @s[tag=obl.temp.break] run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1

###   О Ч И С Т К А
tag @s remove obl.temp.break
tag @s remove obl.temp.mainhand
tag @s remove obl.temp.offhand
tag @s remove obl.temp.parry_fail