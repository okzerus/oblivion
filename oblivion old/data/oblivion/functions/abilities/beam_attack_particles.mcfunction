tag @s[type=player] add obl.player_beam
particle electric_spark ^ ^ ^ 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle electric_spark ^ ^ ^-.30 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle electric_spark ^ ^ ^-.60 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle electric_spark ^ ^ ^-.90 0 0 0 0 1 normal @a[tag=!obl.player_beam]
tag @s remove obl.player_beam

execute if entity @s[distance=..45] positioned ^ ^ ^1.2 run function oblivion:abilities/beam_attack_particles