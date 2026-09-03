execute if predicate oblivion:biomes/any.desert run particle minecraft:falling_dust sand ~ ~.05 ~ 0.2 0 0.2 0 1 normal

scoreboard players add @s[tag=!obl.empowered.storm_bottle] obl.stackable.jump_boost 150
tag @s[tag=!obl.empowered.storm_bottle] add obl.empowered.storm_bottle

scoreboard players remove @s[tag=!obl.equipped.accs.storm_bottle] obl.stackable.jump_boost 150
tag @s[tag=!obl.equipped.accs.storm_bottle] remove obl.empowered.storm_bottle