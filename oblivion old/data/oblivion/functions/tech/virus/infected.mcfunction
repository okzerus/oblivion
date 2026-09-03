# Randomizer

function oblivion:rng


title @s title {"text":"\u0412\u044b \u0431\u044b\u043b\u0438 \u0437\u0430\u0440\u0430\u0436\u0435\u043d\u044b!","color":"dark_red"}
title @s subtitle {"text":"\u041d\u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u0438\u0442\u0435 \u0431\u043b\u0438\u0437\u043a\u043e \u043a \u0442\u0435\u043c, \u043a\u043e\u0433\u043e \u043b\u044e\u0431\u0438\u0442\u0435..","color":"red"}
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 0.1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.1 0.1
execute if entity @s[type=villager,tag=!obl.infected] run scoreboard players add @a[distance=..100] infectedvill 1
tag @s add obl.infected
execute if score randomizer obl.rng matches 1..75 run effect give @s poison 60 0
execute if score randomizer obl.rng matches 76..100 run effect give @s wither 60 0
effect give @s nausea 15 0
effect give @s weakness 60 0
effect give @s blindness 2 0
effect give @s mining_fatigue 1 1
effect give @s slowness 60 1
effect give @s hunger 60 1
advancement grant @s[type=player] only oblivion:advancements/items/virusinfect