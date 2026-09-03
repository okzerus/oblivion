tag @s remove obl.enraged
tag @s remove obl.custom_rage

playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.8

title @s times 0 20 10
title @s title ""
function oblivion:rng
execute if score randomizer obl.rng matches 1..20 run title @s subtitle {"text":"ЧТО С ЕБАЛОМ, РЕБЯТА!?","italic":true,"color":"#9f050f"}
execute if score randomizer obl.rng matches 21..40 run title @s subtitle {"text":"ЧТО, ВСЕ ПОЛУЧИЛИ!?","italic":true,"color":"#9f050f"}
execute if score randomizer obl.rng matches 41..60 run title @s subtitle {"text":"ЛАДНО, ВСЕХ ПРОЩАЮ!","italic":true,"color":"#9f050f"}
execute if score randomizer obl.rng matches 61..80 run title @s subtitle {"text":"ВСЁ, ПЫЛ ОСТЫЛ!","italic":true,"color":"#9f050f"}
execute if score randomizer obl.rng matches 81..100 run title @s subtitle {"text":"ЛАДНО, ЗРЯ БЫКАНУЛ!","italic":true,"color":"#9f050f"}

scoreboard players remove @s[type=player] obl.stackable.speed 150
scoreboard players remove @s[type=player] obl.stackable.jump_boost 150
scoreboard players remove @s[type=player] obl.stackable.strength 150
effect clear @s[type=!player] minecraft:speed 
effect clear @s[type=!player] minecraft:jump_boost 
effect clear @s[type=!player] minecraft:strength 

effect give @s minecraft:slowness 3 0

scoreboard players set @s obl.rage 0