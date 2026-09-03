scoreboard players add @s obl.murasama.temp_tick 1

execute if score @s[tag=obl.murasama_marker.cross.1] obl.murasama.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~-260 ~-220 run function oblivion:items/murasama/attack_patterns/cross.2
execute if score @s[tag=obl.murasama_marker.cross.2] obl.murasama.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~80 ~220 run function oblivion:items/murasama/attack_patterns/cross.2
execute if score @s obl.murasama.temp_tick matches 2.. run kill @s