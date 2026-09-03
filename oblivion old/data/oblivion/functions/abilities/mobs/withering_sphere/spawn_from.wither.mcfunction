execute at @a[tag=obl.temp.triggered_withering_sphere] run tag @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},limit=1,sort=nearest] add obl.temp.spawn_spheres

execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere
execute at @e[type=item,tag=obl.temp.spawn_spheres] run function oblivion:mobs/nether/withering_sphere

tag @e[type=item] remove obl.temp.spawn_spheres
tag @a remove obl.temp.triggered_withering_sphere