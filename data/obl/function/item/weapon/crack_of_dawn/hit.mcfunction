###   P A R T I C L E S
execute if score @s obl.effect.buff.scorchfield.count matches 1..49 run particle minecraft:smoke ~ ~ ~ 10 3 10 0.01 5 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50.. run particle minecraft:large_smoke ~ ~ ~ 10 3 10 0.01 7 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50..149 run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 3 normal
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 15 normal
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 10 0 10 0 5 normal

