advancement revoke @s only oblivion:tech/pickupgoodfood
tellraw @s[tag=obl.goodfoodeat2] {"text":"\u0412\u044b \u043f\u043e\u0434\u043e\u0431\u0440\u0430\u043b\u0438 \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043c\u043d\u043e\u0433\u043e \u0435\u0434\u044b \u0437\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u044e\u044e \u043c\u0438\u043d\u0443\u0442\u0443! \u041d\u0435 \u043e\u0431\u0436\u043e\u0440\u0441\u0442\u0432\u0443\u0439\u0442\u0435!","color":"red"}

execute unless entity @s[tag=obl.goodfoodeat2] run effect give @s instant_health 1 1 true
execute if entity @s[tag=obl.goodfoodeat2] run effect give @s instant_damage 1 0 true
execute if entity @s[tag=obl.goodfoodeat2] run effect give @e[tag=hunger,sort=nearest,limit=1] instant_damage 1 2 true
clear @s bread{goodfood:1b}
clear @s carrot{goodfood:1b}
clear @s baked_potato{goodfood:1b}
clear @s mushroom_stew{goodfood:1b}
execute unless entity @s[tag=obl.goodfoodeat2] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute unless entity @s[tag=obl.goodfoodeat2] run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 50 force
execute unless entity @s[tag=obl.goodfoodeat2] run particle minecraft:heart ~ ~1 ~ 0.3 0.6 0.3 0 50 force
execute if entity @s[tag=obl.goodfoodeat2] run playsound minecraft:entity.husk.ambient master @s ~ ~ ~
execute if entity @s[tag=obl.goodfoodeat2] run particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 50 force

tag @s[tag=obl.goodfoodeat] add obl.goodfoodeat2
tag @s add obl.goodfoodeat