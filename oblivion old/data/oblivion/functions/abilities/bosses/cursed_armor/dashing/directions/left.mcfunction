tp @s ~ ~ ~
particle dust 0 1 0 1 ~ ~.5 ~ 0.3 0.9 0.3 0 50 force
particle block dirt ~ ~.3 ~ 0.7 0 0.7 0 30 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 1.6
playsound minecraft:entity.firework_rocket.large_blast hostile @a ~ ~ ~ 1 0.8
execute anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~ 0 positioned ^1.75 ^.5 ^ summon marker run function oblivion:abilities/mobs/dash.as_marker
data modify entity @s Motion set from storage oblivion:temp vector