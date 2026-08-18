execute if entity @s[tag=obl.beam.unusual.shockwave] run tp @s ^ ^ ^0.2
execute if entity @s[tag=obl.beam.unusual.nebula] run tp @s ^ ^ ^0.35

execute if entity @s[tag=obl.beam.unusual.shockwave] run particle end_rod ^ ^ ^ 0 0 0 0 1 normal
execute if entity @s[tag=obl.beam.unusual.shockwave] run particle end_rod ^ ^ ^.10 0 0 0 0 1 normal
execute if entity @s[tag=obl.beam.unusual.nebula] run particle electric_spark ^ ^ ^ 0 0 0 0.02 1 normal
execute if entity @s[tag=obl.beam.unusual.nebula] run particle minecraft:dust{color:[0.1f,0.02f,0.15f],scale:0.8f} ^ ^ ^ 0 0 0 0 1 normal @a
execute if entity @s[tag=obl.beam.unusual.nebula] run particle minecraft:dust{color:[0.72f,0.28f,0.92f],scale:0.8f} ^ ^ ^ 0 0 0 0 1 normal @a