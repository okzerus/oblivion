###   G O O D   E V E N T   T I C K I N G
execute in minecraft:overworld if score great_day oblivion matches 1 run function oblivion:events/great_day/tick
execute in minecraft:overworld if score pearl_moon oblivion matches 1 run function oblivion:events/pearl_moon/tick


###   B A D   E V E N T   T I C K I N G
execute in minecraft:overworld if score solar_eclipse oblivion matches 1 run function oblivion:events/solar_eclipse/tick
execute in minecraft:overworld if score blood_moon oblivion matches 1 run function oblivion:events/blood_moon/tick
execute in minecraft:overworld if score xmas_night oblivion matches 1 run function oblivion:events/xmas_night/tick


###   M I S C
execute unless score solar_eclipse oblivion matches 1 as @a[tag=obl.solmeteorspawned] run tag @s remove obl.solmeteorspawned