execute as @p at @s anchored eyes run particle minecraft:crit ^ ^-.2 ^.4 0 0 0 0.5 5 normal
tag @s add obl.fletcher_empowered

execute store result entity @s Motion[0] double 0.0013 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.0013 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.0013 run data get entity @s Motion[2] 1000
