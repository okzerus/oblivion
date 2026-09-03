gamerule showDeathMessages false
effect give @s instant_damage 1 50 true
tellraw @a ["",{"selector":"@s"},{"text":", \u043a\u0430\u0436\u0435\u0442\u0441\u044f, \u043d\u0435 \u0434\u043e \u043a\u043e\u043d\u0446\u0430 \u043f\u043e\u043d\u044f\u043b \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432\u0430 \"проклятый\""}]
schedule function oblivion:tech/adv/cursedfleshdeath 1s