execute if entity @s[tag=pixietransform] run particle dust 1 0.2 1 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute unless entity @s[tag=pixietransform] run particle dust 1 0 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute unless entity @s[tag=pixietransform] at @a[distance=..25] run particle dust 1 0 0 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute unless entity @s[tag=pixietransform] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] run function oblivion:tech/abilities/enterpixie