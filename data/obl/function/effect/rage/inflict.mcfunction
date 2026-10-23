tag @s add obl.effect.enraged

execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{"text":"В ярости!","color":"#9f050f"},background:905969664,billboard:"center",Tags:["obl.announce.rage","obl.announcement_marker"]}
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 0.7 1.2

title @s times 0 30 10
title @s title {"text":"В ЯРОСТИ!","italic":true,"color":"#c30d0f"}
title @s subtitle {"text":"THE ONLY THING THEY FEAR IS YOU.","italic":true,"color":"#c30d0f"}

particle angry_villager ~ ~1.5 ~ 0.5 1 0.5 0.01 40
particle minecraft:dust{color:[0.7f,0f,0f],scale:0.6f} ~ ~1.5 ~ 0.5 1 0.5 0.01 80

attribute @s attack_damage modifier add obl.empower.rage 3 add_value
attribute @s jump_strength modifier add obl.empower.rage 0.1 add_value
attribute @s movement_speed modifier add obl.empower.rage 0.2 add_value