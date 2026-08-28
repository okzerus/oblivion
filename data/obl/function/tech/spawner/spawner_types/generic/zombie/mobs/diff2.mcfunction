execute store result score @s obl run random value 1..4

execute if score @s obl matches 1..3 at @s run summon zombie ~ ~ ~ {CustomName:"Абобик третьей сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.spawner.generic.mob],PersistenceRequired:true,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute if score @s obl matches 4 at @s run summon zombie ~ ~ ~ {CustomName:"Мини Абобик третьей сложности", CustomNameVisible:1b,Tags:[obl.spawner.mob,obl.spawner.generic.mob],PersistenceRequired:true,IsBaby:1b,Passengers:[{id:"minecraft:marker",Tags:["obl.death_detector"]}]}
execute at @s if score #time obl.time_of_day matches 0..13000 run effect give @n fire_resistance 60 0 false
execute at @s if block ~ ~-1 ~ #air run effect give @n slow_falling 10 0 false
execute at @s run scoreboard players operation @n[tag=obl.spawner.mob] obl.spawner.id = @s obl.spawner.id
kill @s