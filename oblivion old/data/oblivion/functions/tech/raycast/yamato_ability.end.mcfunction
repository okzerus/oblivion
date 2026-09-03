particle electric_spark ^ ^ ^ 0 0 0 0 1
particle electric_spark ^ ^ ^.3 0 0 0 0 1
particle electric_spark ^ ^ ^.6 0 0 0 0 1
particle electric_spark ^ ^ ^.9 0 0 0 0 1
particle firework ^ ^ ^ 0 0 0 0.3 1

execute if block ~ ~ ~ #oblivion:muramasa run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #oblivion:muramasawater run setblock ~ ~ ~ water destroy

execute if entity @s[distance=..9] positioned ^ ^ ^1.2 run function oblivion:tech/raycast/yamato_ability.end
execute unless entity @s[distance=..9] run kill @s