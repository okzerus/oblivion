tag @s add obl.bleeding

summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.bleeding.announcement","obl.announcement_marker"],CustomName:'[{"text":"Кровотечение!","color":"#fd1b2a"}]',CustomNameVisible:1b}

title @s times 0 30 10
title @s title {"text":"КРОВОТЕЧЕНИЕ!","italic":true,"color":"#fd1b2a"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#fd1b2a"}

playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.7

execute if entity @s[type=#oblivion:bleeding.red_particle,tag=!obl.honey_bleeding] run particle block nether_wart_block ~ ~1 ~ 0.2 0.2 0.2 0 70
execute if entity @s[type=#oblivion:bleeding.green_particle,tag=!obl.honey_bleeding] run particle block moss_block ~ ~1 ~ 0.2 0.2 0.2 0 70
execute if entity @s[type=#oblivion:bleeding.purple_particle,tag=!obl.honey_bleeding] run particle block warped_wart_block ~ ~0.5 ~ 0.2 0.4 0.2 0 70
execute if entity @s[tag=obl.honey_bleeding] run particle block honey_block ~ ~1 ~ 0.2 0.2 0.2 0 70