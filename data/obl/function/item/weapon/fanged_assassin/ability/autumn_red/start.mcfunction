###   U N ' E S P L O S I O N E   D I   R O S S O   A U T U N N A L E
title @s times 0 30 1
title @s title {"text":""}
title @s subtitle {"text":"Ненависти и обиде нет места,","italic":true,"color":"#fa912f"}

execute unless entity @s[tag=obl.vanilla.slowness] run tag @s add obl.custom_slowness
effect give @s minecraft:slowness 3 1 true
execute unless entity @s[tag=obl.vanilla.darkness] run tag @s add obl.custom_darkness
effect give @s minecraft:darkness 3 9 true