scoreboard players add @s obl.murasama.temp_tick 1
execute positioned as @p[tag=obl.murasama.spinning] run tp @s ~ ~.9 ~

execute if score @s obl.murasama.temp_tick matches 1 rotated ~ ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 1 rotated ~-22.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 1 rotated ~-45 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 1 rotated ~-67.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 2 rotated ~-90 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 2 rotated ~-112.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 2 rotated ~-135 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 2 rotated ~-157.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 3 rotated ~-180 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 3 rotated ~-202.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 3 rotated ~-225 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 3 rotated ~-247.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 4 rotated ~-270 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 4 rotated ~-292.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 4 rotated ~-315 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 4 rotated ~-337.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 5 rotated ~-360 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 5 rotated ~-22.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 5 rotated ~-45 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 5 rotated ~-67.5 ~ positioned ^ ^ ^1.1 run function oblivion:items/murasama/attack_patterns/spin.particles
execute if score @s obl.murasama.temp_tick matches 5 run tag @a remove obl.murasama.spinning
execute if score @s obl.murasama.temp_tick matches 5 run tag @e[type=#oblivion:aoe,tag=obl.temp.drain_blood] remove obl.temp.drain_blood
execute if score @s obl.murasama.temp_tick matches 5.. run kill @s