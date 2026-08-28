execute store result score @s obl run random value 1..5

execute if score @s obl matches 1..2 at @s run summon zombie ~ ~ ~ {CustomName:"Абобик четвёртой сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.spawner.generic.mob],PersistenceRequired:true,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute if score @s obl matches 3..4 at @s run summon zombie ~ ~ ~ {CustomName:"Мини Абобик четвёртой сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.spawner.generic.mob],PersistenceRequired:true,IsBaby:1b,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute if score @s obl matches 5 at @s run summon zombie_horse ~ ~ ~ {Passengers:[{id:zombie,CustomName:"Каток Абобик четвёртой сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.spawner.passenger_mob,obl.spawner.generic.mob],PersistenceRequired:true,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}],PersistenceRequired:true,Tags:[obl.spawner.vehicle_mob,obl.spawner.generic.mob],Tame:1b}
execute unless score @s obl matches 5 at @s if score #time obl.time_of_day matches 0..12000 run effect give @n[tag=obl.spawner.mob] fire_resistance 60 0 false
execute if score @s obl matches 5 at @s if score #time obl.time_of_day matches 0..12000 run effect give @n[tag=obl.spawner.passenger_mob] fire_resistance 60 0 false
execute if score @s obl matches 5 at @s if score #time obl.time_of_day matches 0..12000 run effect give @n[tag=obl.spawner.vehicle_mob] fire_resistance 60 0 false
execute at @s if block ~ ~-1 ~ #air run effect give @n slow_falling 10 0 false
execute unless score @s obl matches 5 at @s run scoreboard players operation @n[tag=obl.spawner.mob] obl.spawner.id = @s obl.spawner.id
execute if score @s obl matches 5 at @s run scoreboard players operation @n[tag=obl.spawner.passenger_mob] obl.spawner.id = @s obl.spawner.id
execute if score @s obl matches 5 at @s run scoreboard players operation @n[tag=obl.spawner.vehicle_mob] obl.spawner.id = @s obl.spawner.id
kill @s