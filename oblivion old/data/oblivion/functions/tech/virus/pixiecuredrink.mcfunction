particle dust 1 0 0 3 ~ ~1 ~ 0.3 0.6 0.3 0 100 force
effect clear @s nausea
effect clear @s weakness
effect clear @s blindness
effect clear @s mining_fatigue
effect clear @s slowness
effect clear @s hunger
effect clear @s wither
effect clear @s poison
effect give @s regeneration 5 2 false
effect give @s blindness 2 0 true
playsound minecraft:entity.wandering_trader.drink_milk master @a ~ ~ ~ 1 1
tag @s add obl.curingtick
tag @s remove obl.infected
scoreboard players set @s infectedcount 0
advancement grant @s only oblivion:advancements/mobs/overworld/pixiebottlecure
title @s actionbar {"text":"\u0412\u044b \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0438 \u0438\u043c\u043c\u0443\u043d\u0438\u0442\u0435\u0442 \u043a \u0432\u0438\u0440\u0443\u0441\u0443 \u043d\u0430 3 \u0434\u043d\u044f \u043f\u043e\u0441\u043b\u0435 \u0443\u043f\u043e\u0442\u0440\u0435\u0431\u043b\u0435\u043d\u0438\u044f \u041f\u0438\u043a\u0441\u0438!","color":"green"}
tag @s add obl.virusimmuny