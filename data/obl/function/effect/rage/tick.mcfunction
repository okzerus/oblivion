particle minecraft:dust{color:[0.7f,0f,0f],scale:0.6f} ~ ~1.5 ~ 0.5 1 0.5 0.01 10
particle minecraft:dust{color:[0.5f,0f,0f],scale:1f} ~ ~.5 ~ 0.3 0.6 0.3 0.01 3

scoreboard players add @s[tag=!obl.effect.infinite_rage,tag=!obl.effect.custom_rage] obl.effect.rage 1
execute if score @s[tag=!obl.effect.custom_rage] obl.effect.rage matches 100.. run function obl:effect/rage/end

execute if entity @s[tag=obl.effect.custom_rage] run scoreboard players remove @s obl.effect.rage 1
execute if score @s[tag=obl.effect.custom_rage] obl.effect.rage matches 0 run function obl:effect/rage/end