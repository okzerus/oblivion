tag @s add obl.cursed

summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.curse.announcement","obl.announcement_marker"],CustomName:'[{"text":"Проклят!","color":"#74cb71"}]',CustomNameVisible:1b}

title @s times 0 30 10
title @s title {"text":"ПРОКЛЯТ!","italic":true,"color":"#74cb71"}
title @s subtitle {"text":"ДЕБАФФЫ НЕ БУДУТ УГАСАТЬ!","italic":true,"color":"#74cb71"}

playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.7

particle enchant ~ ~1.5 ~ 0.5 1 0.5 0.01 80