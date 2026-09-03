# Set constants
scoreboard players set 60 obl.time 60
scoreboard players set 1000 obl.time 1000

# Get MC Hour and Minute from current daytime tick
execute store result score current obl.time run time query daytime
scoreboard players operation hour obl.time = current obl.time
scoreboard players operation hour obl.time /= 1000 obl.time
scoreboard players operation minute obl.time = current obl.time
scoreboard players operation minute obl.time %= 1000 obl.time
scoreboard players operation minute obl.time *= 60 obl.time
scoreboard players operation minute obl.time /= 1000 obl.time

# Offset +6
scoreboard players add hour obl.time 6
execute if score hour obl.time matches 24 run scoreboard players set hour obl.time 0
execute if score hour obl.time matches 25 run scoreboard players set hour obl.time 1
execute if score hour obl.time matches 26 run scoreboard players set hour obl.time 2
execute if score hour obl.time matches 27 run scoreboard players set hour obl.time 3
execute if score hour obl.time matches 28 run scoreboard players set hour obl.time 4
execute if score hour obl.time matches 29 run scoreboard players set hour obl.time 5

# 1 - Morning, 2 - Day, 3 - Evening, 4 - Night
execute if score hour obl.time matches 5..9 run scoreboard players set type obl.time 1
execute if score hour obl.time matches 10..16 run scoreboard players set type obl.time 2
execute if score hour obl.time matches 17..18 run scoreboard players set type obl.time 3
execute if score hour obl.time matches 19..23 run scoreboard players set type obl.time 4
execute if score hour obl.time matches 0..4 run scoreboard players set type obl.time 4

# Tellraw
tellraw @s [{"text":"Текущий день: ","color":"yellow"},{"score":{"name":"daycount","objective":"oblivion"},"color":"gold"}]
execute unless score hour obl.time matches 0..9 unless score minute obl.time matches 0..9 run tellraw @s [{"text":"Время: ","color":"yellow"},{"score":{"name":"hour","objective":"obl.time"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"minute","objective":"obl.time"},"color":"gold"}]
execute if score hour obl.time matches 0..9 unless score minute obl.time matches 0..9 run tellraw @s [{"text":"Время: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"hour","objective":"obl.time"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"minute","objective":"obl.time"},"color":"gold"}]
execute unless score hour obl.time matches 0..9 if score minute obl.time matches 0..9 run tellraw @s [{"text":"Время: ","color":"yellow"},{"score":{"name":"hour","objective":"obl.time"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"minute","objective":"obl.time"},"color":"gold"}]
execute if score hour obl.time matches 0..9 if score minute obl.time matches 0..9 run tellraw @s [{"text":"Время: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"hour","objective":"obl.time"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"minute","objective":"obl.time"},"color":"gold"}]
execute if score type obl.time matches 1 run tellraw @s [{"text":"Утро","color":"gold"}]
execute if score type obl.time matches 2 run tellraw @s [{"text":"День","color":"gold"}]
execute if score type obl.time matches 3 run tellraw @s [{"text":"Вечер","color":"gold"}]
execute if score type obl.time matches 4 run tellraw @s [{"text":"Ночь","color":"gold"}]

# Misc
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
advancement grant @s only oblivion:advancements/accs/other/clock
tag @s add obl.used_clock