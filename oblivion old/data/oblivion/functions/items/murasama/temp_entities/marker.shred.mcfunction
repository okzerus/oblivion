scoreboard players add @s obl.murasama.temp_tick 1

execute if score @s[tag=obl.murasama_marker.shred.1] obl.murasama.temp_tick matches 1 anchored eyes positioned ^ ^ ^.01 rotated ~-260 ~-220 run function oblivion:items/murasama/attack_patterns/shred.2
execute if score @s[tag=obl.murasama_marker.shred.2] obl.murasama.temp_tick matches 1 anchored eyes positioned ^ ^ ^.01 rotated ~80 ~220 run function oblivion:items/murasama/attack_patterns/shred.2
execute if score @s[tag=obl.murasama_marker.shred.1] obl.murasama.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/murasama/attack_patterns/shred.3
execute if score @s[tag=obl.murasama_marker.shred.2] obl.murasama.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/murasama/attack_patterns/shred.3
execute if score @s[tag=obl.murasama_marker.shred.1] obl.murasama.temp_tick matches 3 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/murasama/attack_patterns/shred.4
execute if score @s[tag=obl.murasama_marker.shred.2] obl.murasama.temp_tick matches 3 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/murasama/attack_patterns/shred.4
execute if score @s obl.murasama.temp_tick matches 3.. run kill @s