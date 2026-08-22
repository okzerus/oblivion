execute at @s run summon zombie ~ ~ ~ {CustomName:"Абобик второй сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.generic_spawner.mob],PersistenceRequired:true,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute at @s if score #time obl.time_of_day matches 0..12000 run effect give @n fire_resistance 1200 0 false
execute at @s if block ~ ~-1 ~ #air run effect give @n slow_falling 200 0 false
scoreboard players operation @n[tag=obl.spawner.mob] obl.spawner.id = @s obl.spawner.id
execute if entity @n[tag=obl.spawner.mob,scores={obl.spawner.id=1..}] run kill @s