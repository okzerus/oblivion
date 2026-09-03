scoreboard players add @s obl.yamato.temp_tick 1

execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 1 anchored eyes positioned ^ ^ ^.01 rotated ~-260 ~-220 run function oblivion:items/yamato/attack_patterns/shred.2
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 1 anchored eyes positioned ^ ^ ^.01 rotated ~80 ~220 run function oblivion:items/yamato/attack_patterns/shred.2
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/yamato/attack_patterns/shred.3
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 2 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/yamato/attack_patterns/shred.3
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 3 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/yamato/attack_patterns/shred.4
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 3 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/yamato/attack_patterns/shred.4
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 4 anchored eyes positioned ^ ^ ^.01 rotated ~-110 ~-220 run function oblivion:items/yamato/attack_patterns/shred.5
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 4 anchored eyes positioned ^ ^ ^.01 rotated ~-100 ~140 run function oblivion:items/yamato/attack_patterns/shred.5
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 5 anchored eyes positioned ^ ^ ^.01 rotated ~-260 ~-220 run function oblivion:items/yamato/attack_patterns/shred.6
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 5 anchored eyes positioned ^ ^ ^.01 rotated ~80 ~220 run function oblivion:items/yamato/attack_patterns/shred.6
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 6 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/yamato/attack_patterns/shred.7
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 6 anchored eyes positioned ^ ^ ^.01 rotated ~ ~-90 run function oblivion:items/yamato/attack_patterns/shred.7
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 7 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/yamato/attack_patterns/shred.8
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 7 anchored eyes positioned ^ ^ ^.01 rotated ~90 ~ run function oblivion:items/yamato/attack_patterns/shred.8
execute if score @s[tag=obl.yamato_marker.shred.1] obl.yamato.temp_tick matches 8 anchored eyes positioned ^ ^ ^.01 rotated ~180 ~ run function oblivion:items/yamato/attack_patterns/shred.9
execute if score @s[tag=obl.yamato_marker.shred.2] obl.yamato.temp_tick matches 8 anchored eyes positioned ^ ^ ^.01 rotated ~180 ~ run function oblivion:items/yamato/attack_patterns/shred.9
execute if score @s obl.yamato.temp_tick matches 8.. run kill @s