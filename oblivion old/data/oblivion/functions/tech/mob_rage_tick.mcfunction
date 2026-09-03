particle dust 0.7 0 0 0.6 ~ ~1.5 ~ 0.5 1 0.5 0.01 10
particle dust 0.5 0 0 1 ~ ~.5 ~ 0.3 0.6 0.3 0.01 3

scoreboard players add @s[tag=!obl.infinite_rage,tag=!obl.custom_rage] obl.rage 1
execute if score @s[tag=!obl.custom_rage] obl.rage matches 100.. run function oblivion:tech/mob_rage_disabled

execute if entity @s[tag=obl.custom_rage] run scoreboard players remove @s obl.rage 1
execute if score @s[tag=obl.custom_rage] obl.rage matches 0 run function oblivion:tech/mob_rage_disabled