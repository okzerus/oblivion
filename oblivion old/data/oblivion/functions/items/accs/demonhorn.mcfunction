execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] unless score @s demon.used matches 1 run function oblivion:items/accs/effects/demonhorneffects

execute at @s unless score @s[nbt={Dimension:"minecraft:the_nether"}] demon.used matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/demonhornoverworld
execute at @s unless score @s[nbt={Dimension:"minecraft:overworld"}] demon.used matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/demonhornnether