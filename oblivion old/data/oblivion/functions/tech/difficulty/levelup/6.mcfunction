scoreboard players add @s obl.difficulty 1
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.1
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.1
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.2
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.3
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.4
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.5
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.6
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.7
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.8
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 0.9
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.1
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.2
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.3
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.4
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.5
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.6
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.7
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.8
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 1.9
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 100

advancement grant @s only oblivion:advancements/levelup/6
advancement grant @s only oblivion:advancements/levelup/enchantments

xp add @s 30 levels

effect give @s regeneration 10 1 false
effect give @s resistance 10 1 false
effect give @s speed 10 1 false
effect give @s hero_of_the_village 600 5 false

title @s times 10 140 40
title @s subtitle {"text":"[ \u0423\u0440\u043e\u0432\u0435\u043d\u044c \u0441\u043b\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u0431\u044b\u043b \u043f\u043e\u0432\u044b\u0448\u0435\u043d! ]","color":"yellow"}
title @s title {"text":"\u22d8 [ 6 ] \u22d9","color":"gold"}