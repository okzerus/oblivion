particle minecraft:flame ~ ~.2 ~ 0.4 0 0.4 0 10 normal
execute at @s[nbt={Dimension:"minecraft:the_nether"}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run scoreboard players add @s obl.firecount 1
fill ~ ~ ~ ~ ~ ~ fire replace air
fill ~ ~ ~ ~ ~ ~ fire replace cave_air
fill ~ ~ ~ ~ ~ ~ fire replace void_air

execute if block ~ ~ ~ fire run effect give @s fire_resistance 5 0 false
execute if block ~ ~ ~ fire run effect give @s slowness 2 1 true

execute if score @s obl.firecount matches 666 run advancement grant @s only oblivion:advancements/accs/other/solar