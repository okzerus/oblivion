advancement revoke @s only oblivion:tech/pickupcursedfood
tellraw @s {"text":"\u0421\u0442\u0430\u0440\u0430\u0439\u0442\u0435\u0441\u044c \u043d\u0435 \u043f\u043e\u0434\u0431\u0438\u0440\u0430\u0442\u044c \u0434\u043e\u0440\u043e\u0433\u043e\u0441\u0442\u044f\u0449\u0443\u044e \u043f\u0438\u0449\u0443! \u0416\u0430\u0434\u043d\u043e\u0441\u0442\u044c \u0442\u043e\u0436\u0435 \u0433\u0440\u0435\u0445!","color":"red"}
effect give @s instant_damage 1 0 true
effect give @e[tag=hunger,sort=nearest,limit=1] instant_damage 1 2 true
clear @s enchanted_golden_apple{cursedfood:1b}
clear @s golden_apple{cursedfood:1b}
clear @s cake{cursedfood:1b}
clear @s golden_carrot{cursedfood:1b}
playsound minecraft:entity.husk.ambient master @s ~ ~ ~ 1 0.1
particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 50 force