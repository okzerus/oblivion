particle minecraft:dust 1 0.7 1 0.5 ~ ~1 ~ 0.3 0.6 0.3 0 2
effect give @s haste 1 9 true

execute unless predicate oblivion:effects/has.invisibility run function oblivion:items/abilities/phantom_pickaxe/ability.end
execute unless predicate oblivion:items/hold.phantom_pickaxe run function oblivion:items/abilities/phantom_pickaxe/ability.end