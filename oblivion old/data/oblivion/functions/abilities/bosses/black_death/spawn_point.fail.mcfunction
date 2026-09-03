setblock ~ ~-1 ~ reinforced_deepslate
setblock ~ ~1 ~ reinforced_deepslate
setblock ~ ~ ~-1 reinforced_deepslate
setblock ~ ~ ~1 reinforced_deepslate
setblock ~-1 ~ ~ reinforced_deepslate
setblock ~1 ~ ~ reinforced_deepslate
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 1
execute as @a[distance=..8.7,scores={obl.difficulty=..1}] at @s run particle minecraft:angry_villager ~ ~1 ~ 3 3 3 0 100 force @s
effect give @a[distance=..8.7,scores={obl.difficulty=..1}] blindness 5 9 true
effect give @a[distance=..8.7,scores={obl.difficulty=..1}] slowness 5 9 true
effect give @a[distance=..8.7,scores={obl.difficulty=..1}] weakness 5 9 true
effect give @a[distance=..8.7,scores={obl.difficulty=..1}] mining_fatigue 5 9 true
title @a[distance=..8.7,scores={obl.difficulty=..1}] actionbar {"text":"Ваш уровень недостаточно высокий, чтобы пробудить этого босса! (2)","italic":true,"color":"dark_red"}