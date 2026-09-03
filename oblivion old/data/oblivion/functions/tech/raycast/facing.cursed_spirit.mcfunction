particle dust 0 1 0 0.8 ^ ^ ^ 0 0 0 0 1 force
particle dust 0 1 0 0.8 ^ ^ ^-.15 0 0 0 0 1 force
particle dust 0 1 0 0.8 ^ ^ ^.15 0 0 0 0 1 force
particle electric_spark ^ ^ ^ 0 0 0 0 1 force
particle electric_spark ^ ^ ^-.15 0 0 0 0 1 force
particle electric_spark ^ ^ ^.15 0 0 0 0 1 force
execute if entity @s[distance=..15] unless entity @e[type=vex,tag=obl.cursed_armor.minion,distance=...5] positioned ^ ^ ^.3 run function oblivion:tech/raycast/facing.cursed_spirit