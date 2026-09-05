# Рандомайзер.
# https://minecraftcommands.github.io/wiki/questions/randomnumber (метод UUID).

summon area_effect_cloud ~ ~ ~ {Tags:["obl.random_uuid"]}
execute store result score randomizer obl.rng run data get entity @e[type=area_effect_cloud,tag=obl.random_uuid,limit=1] UUID[0] 1
scoreboard players operation randomizer obl.rng %= randomizer obl.rng.range
kill @e[type=area_effect_cloud,tag=obl.random_uuid]

# Сдвиг числа на 1, чтобы получить диапазон 1-100, а не 0-99.
scoreboard players add randomizer obl.rng 1

tellraw @a[tag=obl.debug] {"score":{"name":"randomizer","objective":"obl.rng"}}

# Сброс диапазона (некоторым функциям нужны случайные числа больше 100)
scoreboard players set randomizer obl.rng.range 100
