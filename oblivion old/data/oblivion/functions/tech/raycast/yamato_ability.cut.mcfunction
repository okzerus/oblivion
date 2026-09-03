particle electric_spark ^ ^ ^ 0 0 0 0 1
particle electric_spark ^ ^ ^.3 0 0 0 0 1
particle electric_spark ^ ^ ^.6 0 0 0 0 1
particle electric_spark ^ ^ ^.9 0 0 0 0 1
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.15 2
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.05 1.7
tag @s add obl.temp.modified

execute if entity @s[distance=..9] positioned ^ ^ ^1.2 run function oblivion:tech/raycast/yamato_ability.cut