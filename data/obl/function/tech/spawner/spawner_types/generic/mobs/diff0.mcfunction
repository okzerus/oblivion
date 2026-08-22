execute at @s run summon zombie ~ ~ ~ {CustomName:"Абобик первой сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.generic_spawner.mob], active_effects:[{id:fire_resistance,duration:800s}], PersistenceRequired:true, Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute at @s if score #time obl.time_of_day matches 0..12000 run effect give @n fire_resistance 1200 0 false
execute at @s if block ~ ~-1 ~ #air run effect give @n slow_falling 200 0 false
execute at @s run scoreboard players operation @n[tag=obl.spawner.mob] obl.spawner.id = @s obl.spawner.id
tag @s add obl.spawner.mob_spawned