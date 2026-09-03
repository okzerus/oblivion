execute if predicate oblivion:in_water run particle minecraft:nautilus ~ ~1 ~ 0.3 0.6 0.3 1 1
execute if predicate oblivion:in_water run effect give @s minecraft:conduit_power 2 0 true
execute if predicate oblivion:raining unless predicate oblivion:in_water run particle minecraft:nautilus ~ ~1 ~ 0.3 0.6 0.3 1 1
execute if predicate oblivion:raining unless predicate oblivion:in_water run effect give @s minecraft:speed 2 0 true
execute if predicate oblivion:raining unless predicate oblivion:in_water run effect give @s minecraft:resistance 2 0 true
execute if predicate oblivion:raining unless predicate oblivion:in_water run effect give @s minecraft:strength 2 0 true
execute if predicate oblivion:raining unless predicate oblivion:in_water run effect give @s minecraft:haste 2 0 true