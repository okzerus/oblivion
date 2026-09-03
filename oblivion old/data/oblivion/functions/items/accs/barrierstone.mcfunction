effect give @a[distance=..50] resistance 2 0 false
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 1 normal
execute unless score @s barrier.used matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/barrierstoneteleport

execute at @a[distance=..50] run scoreboard players add @s playercount2 1
execute if score @s playercount2 matches 3.. run advancement grant @s only oblivion:advancements/accs/other/barrier
scoreboard players set @s playercount2 0