tag @s add obl.stunned

summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.stun.announcement","obl.announcement_marker"],CustomName:'[{"text":"ОГЛУШЁН!","color":"#75aca4"}]',CustomNameVisible:1b}
data merge entity @s[type=!player] {NoAI:1b}

title @s times 0 100 0
title @s title {"text":"ОГЛУШЁН!","italic":true,"color":"#75aca4"}
title @s subtitle {"text":"НЕ СДВИНУТЬСЯ!","italic":true,"color":"#75aca4"}

playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.7

particle crit ~ ~1.5 ~ 0.5 1 0.5 0.01 40
particle enchanted_hit ~ ~1.5 ~ 0.5 1 0.5 0.01 80

effect give @s minecraft:nausea 7 0 true
effect give @s minecraft:mining_fatigue 1 4 true
effect give @s minecraft:weakness 1 4 true