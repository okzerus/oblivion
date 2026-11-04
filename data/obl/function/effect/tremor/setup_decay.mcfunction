## Функция
scoreboard players reset @s obl.effect.tremor.decay_max
scoreboard players set #total obl 200
scoreboard players operation #total obl /= @s obl.effect.tremor.count
execute unless score #total obl matches 1.. run scoreboard players set #total obl 1
scoreboard players operation @s obl.effect.tremor.decay_max = #total obl
scoreboard players operation @s obl.effect.tremor.decay = #total obl