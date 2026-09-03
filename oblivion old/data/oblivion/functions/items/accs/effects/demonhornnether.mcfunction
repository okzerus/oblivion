scoreboard players set @s demon.used 1
function oblivion:items/accs/effects/demonhorntraveleffects
execute in the_nether run tp @s ~ 70 ~ 0 0
tag @s add horntravel
effect give @s nausea 20 0
effect give @s blindness 20 0
effect give @s slowness 20 4
effect give @s wither 20 1