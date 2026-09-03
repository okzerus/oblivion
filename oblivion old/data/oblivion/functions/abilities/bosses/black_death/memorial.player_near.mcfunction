function oblivion:music/playing/start/ambient.black_death
title @s actionbar {"text":"Дрожь пробегает по вашему телу..","color":"#B90206","italic":"true"}
tag @s add obl.near.black_death_memorial
effect give @s blindness 1 0 true
execute at @e[type=marker,tag=obl.black_death.memorial.center] run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.5 1

execute unless entity @s[tag=obl.black_death_memorial.seen_prologue] run tag @s add obl.black_death_memorial.prologue
