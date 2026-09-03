execute if entity @a[tag=obl.hungerchosen,distance=6..] run tp @s ^ ^ ^0.5 facing entity @e[tag=obl.hungerchosen,limit=1] feet
execute if entity @a[tag=obl.hungerchosen,distance=2..6] run tp @s ^0.3 ^ ^0.03 facing entity @e[tag=obl.hungerchosen,limit=1] feet
execute if entity @a[tag=obl.hungerchosen,distance=..2] run tp @s ^ ^ ^0.3 facing entity @e[tag=obl.hungerchosen,limit=1] feet
execute if entity @a[tag=obl.hungerchosen,distance=..0.5] run function oblivion:tech/abilities/hungerabilities/hungerheadeat
particle dust 0 0 0 1 ~ ~1.7 ~ 0.3 0.3 0.3 0 5