particle flame ~ ~.1 ~ 0.5 0 0.5 0 4 normal
particle dust 0.7 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 2 normal
particle dust 1 0.5 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 2 normal
particle dust 0.85 0.85 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 2 normal

execute unless score @s cubeblade.used1 matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/cubeblade1
execute unless score @s cubeblade.used2 matches 1 if entity @s[x_rotation=90] run function oblivion:items/accs/effects/cubeblade2