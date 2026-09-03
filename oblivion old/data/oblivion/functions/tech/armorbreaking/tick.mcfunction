particle minecraft:crit ~ ~1 ~ 0 0.4 0 0.2 3

scoreboard players remove @s[tag=!obl.infinite_broken_armor] obl.broken_armor 1
execute if score @s obl.broken_armor matches 0 run function oblivion:tech/armorbreaking/remove