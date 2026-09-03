title @s actionbar {"text":"\u0412\u0430\u0448 \u0443\u0440\u043e\u0432\u0435\u043d\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u0442\u043e\u0447\u043d\u043e \u0432\u044b\u0441\u043e\u043a\u0438\u0439, \u0447\u0442\u043e\u0431\u044b \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u044d\u0442\u043e\u0442 \u043f\u0440\u0435\u0434\u043c\u0435\u0442!","italic":true,"color":"dark_red"}
effect give @s blindness 5 9 true
effect give @s slowness 5 9 true
effect give @s weakness 5 9 true
effect give @s mining_fatigue 5 9 true
particle minecraft:angry_villager ~ ~1 ~ 3 3 3 0 100 force @s
scoreboard players add @s obl.diffwither 1
execute if score @s obl.diffwither matches 1.. run effect give @s instant_damage 1 0 true
execute if score @s obl.diffwither matches 1.. run scoreboard players set @s obl.diffwither 0