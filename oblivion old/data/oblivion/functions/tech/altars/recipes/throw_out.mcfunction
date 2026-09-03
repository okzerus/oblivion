function oblivion:rng

execute if score randomizer obl.rng matches 1..12 run data merge entity @s {Motion:[0.0d,0.37d,0.1d],NoGravity:0b}
execute if score randomizer obl.rng matches 13..24 run data merge entity @s {Motion:[0.0d,0.37d,-0.1d],NoGravity:0b}
execute if score randomizer obl.rng matches 25..36 run data merge entity @s {Motion:[0.1d,0.37d,0.0d],NoGravity:0b}
execute if score randomizer obl.rng matches 37..48 run data merge entity @s {Motion:[-0.1d,0.37d,0.0d],NoGravity:0b}
execute if score randomizer obl.rng matches 49..60 run data merge entity @s {Motion:[0.1d,0.37d,0.1d],NoGravity:0b}
execute if score randomizer obl.rng matches 61..72 run data merge entity @s {Motion:[-0.1d,0.37d,-0.1d],NoGravity:0b}
execute if score randomizer obl.rng matches 73..84 run data merge entity @s {Motion:[-0.1d,0.37d,0.1d],NoGravity:0b}
execute if score randomizer obl.rng matches 85..100 run data merge entity @s {Motion:[0.1d,0.37d,-0.1d],NoGravity:0b}

particle minecraft:smoke ~ ~.2 ~ 0 0 0 0.05 10
playsound minecraft:entity.snowball.throw ambient @a ~ ~ ~ 0.3 0.5
tag @s remove obl.altar.item
tag @s add obl.ignore_altar