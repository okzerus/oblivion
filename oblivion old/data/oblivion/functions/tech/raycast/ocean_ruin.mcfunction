particle bubble_pop ^ ^ ^ 0.08 0.08 0.08 0 1 normal
particle enchanted_hit ^ ^ ^ 0.08 0.08 0.08 0 1 normal

execute positioned ^ ^ ^.4 if entity @s[distance=..50] unless entity @e[type=guardian,tag=obl.ruin_guardian,distance=...5] run function oblivion:tech/raycast/ocean_ruin