scoreboard players add @s oblivion 1
execute if entity @a[distance=..10] if score @s oblivion matches 70 run function oblivion:tech/abilities/gargantuasummon
execute if score @s oblivion matches 70 run scoreboard players set @s oblivion 0

execute if entity @e[tag=gargantuapass,distance=..3] run effect give @s strength 2 6
execute if entity @e[tag=gargantuapass,distance=..3] run effect give @s speed 2 1
execute if entity @e[tag=gargantuapass,distance=..3] run effect give @s resistance 2 0
execute if entity @e[tag=gargantuapass,distance=..3] run effect give @s jump_boost 2 1