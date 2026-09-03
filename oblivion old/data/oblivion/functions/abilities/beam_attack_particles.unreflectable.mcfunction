tag @s[type=player] add obl.player_beam

particle dust 1 0 0 0.75 ^ ^ ^ 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle dust 1 0 0 0.75 ^ ^ ^.3 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle dust 1 0 0 0.75 ^ ^ ^.6 0 0 0 0 1 normal @a[tag=!obl.player_beam]
particle dust 1 0 0 0.75 ^ ^ ^.9 0 0 0 0 1 normal @a[tag=!obl.player_beam]
tag @s remove obl.player_beam

execute if entity @s[distance=..45] positioned ^ ^ ^1.2 run function oblivion:abilities/beam_attack_particles.unreflectable