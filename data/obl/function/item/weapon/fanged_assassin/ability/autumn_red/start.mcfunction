###   U N ' E S P L O S I O N E   D I   R O S S O   A U T U N N A L E
tag @s add obl.weapon.fanged_assassin.fox_dance.autumn_red.start
title @s times 0 30 1
title @s title {"text":""}
title @s subtitle {"text":"Ненависти и обиде нет места,","italic":true,"color":"#fa912f"}

playsound oblivion:misc.fanged_assassin.mono.autumn_red.start.1 master @a[distance=..16,tag=!obl.weapon.fanged_assassin.fox_dance.autumn_red.start] ~ ~ ~ 3 1
playsound oblivion:misc.fanged_assassin.mono.autumn_red.start.1 master @s ~ ~10000 ~ 100000 1 1

execute unless entity @s[tag=obl.vanilla.slowness] run tag @s add obl.custom_slowness
effect give @s minecraft:slowness 4 1 true
execute unless entity @s[tag=obl.vanilla.darkness] run tag @s add obl.custom_darkness
effect give @s minecraft:darkness 4 9 true
tag @s remove obl.weapon.fanged_assassin.fox_dance.autumn_red.start