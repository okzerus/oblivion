execute if entity @s[tag=obl.beam.unusual.shockwave] run tp @s ^ ^ ^0.2
execute if entity @s[tag=obl.beam.unusual.nebula] run tp @s ^ ^ ^0.35

execute if entity @s[tag=obl.beam.unusual.shockwave] run particle end_rod ^ ^ ^ 0 0 0 0 1 normal
execute if entity @s[tag=obl.beam.unusual.shockwave] run particle end_rod ^ ^ ^.10 0 0 0 0 1 normal
execute if entity @s[tag=obl.beam.unusual.nebula] run particle electric_spark ^ ^ ^ 0 0 0 0.02 1 normal
execute if entity @s[tag=obl.beam.unusual.nebula] run particle minecraft:dust 0.1 0.02 0.15 0.8 ^ ^ ^ 0 0 0 0 1 normal @a
execute if entity @s[tag=obl.beam.unusual.nebula] run particle minecraft:dust 0.72 0.28 0.92 0.8 ^ ^ ^ 0 0 0 0 1 normal @a