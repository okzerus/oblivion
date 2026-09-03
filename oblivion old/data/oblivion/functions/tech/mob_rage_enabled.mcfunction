tag @s add obl.enraged

summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.rage.announcement","obl.announcement_marker"],CustomName:'[{"text":"В ярости!","color":"#9f050f"}]',CustomNameVisible:1b}
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 0.7 1.2

title @s times 0 30 10
title @s title {"text":"В ЯРОСТИ!","italic":true,"color":"#c30d0f"}
title @s subtitle {"text":"THE ONLY THING THEY FEAR IS YOU.","italic":true,"color":"#c30d0f"}

particle angry_villager ~ ~1.5 ~ 0.5 1 0.5 0.01 40
particle dust 0.7 0 0 0.6 ~ ~1.5 ~ 0.5 1 0.5 0.01 80

scoreboard players add @s[type=player] obl.stackable.speed 150
scoreboard players add @s[type=player] obl.stackable.jump_boost 150
scoreboard players add @s[type=player] obl.stackable.strength 150
effect give @s[type=!player] minecraft:speed infinite 1 true
effect give @s[type=!player] minecraft:jump_boost infinite 1 true
effect give @s[type=!player] minecraft:strength infinite 1 true