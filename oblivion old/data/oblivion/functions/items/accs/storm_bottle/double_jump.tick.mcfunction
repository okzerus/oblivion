effect clear @s minecraft:levitation
tag @s remove obl.has_effect.levitation

scoreboard players add @s obl.storm_bottle.tick 1
execute unless score @s obl.storm_bottle.tick matches 7.. run particle minecraft:falling_dust sand ~ ~-1 ~ 0.5 0.5 0.5 0 3 normal
execute unless score @s obl.storm_bottle.tick matches 7.. run playsound minecraft:block.sand.break hostile @a ~ ~ ~ 0.7 0.7

execute if predicate oblivion:on.ground run function oblivion:items/accs/storm_bottle/double_jump.cleanup