execute as @a[tag=obl.temp.triggered_withering_sphere] at @s if dimension minecraft:the_nether if predicate oblivion:chance/50 run tag @e[type=experience_orb,tag=!obl.checked,limit=1,sort=nearest] add obl.temp.spawn_spheres
execute as @a[tag=obl.temp.triggered_withering_sphere] at @s if dimension minecraft:the_nether run tag @e[type=experience_orb,distance=..5] add obl.checked

execute as @e[type=experience_orb,tag=obl.temp.spawn_spheres,limit=1,sort=nearest] at @s run function oblivion:mobs/nether/withering_sphere

tag @e[type=experience_orb] remove obl.temp.spawn_spheres
tag @a remove obl.temp.triggered_withering_sphere