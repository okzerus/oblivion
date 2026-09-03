particle end_rod ^ ^-.4 ^-.9 0 0 0 0 1 force
particle end_rod ^ ^-.4 ^-.6 0 0 0 0 1 force
particle end_rod ^ ^-.4 ^-.3 0 0 0 0 1 force
particle end_rod ^ ^-.4 ^ 0 0 0 0 1 force
execute positioned ^ ^ ^1.2 unless block ~ ~ ~ #oblivion:non_solid if entity @s[distance=..100] positioned ^ ^ ^-.6 run function oblivion:tech/parrying/projectile/list/lightning_bolt.strike
execute positioned ^ ^ ^1.2 unless entity @s[distance=..100] positioned ^ ^ ^-.6 run function oblivion:tech/parrying/projectile/list/lightning_bolt.strike
execute positioned ^ ^ ^1.2 if block ~ ~ ~ #oblivion:non_solid if entity @s[distance=..100] run function oblivion:tech/raycast/parrying_lightning
tag @s remove obl.just_parried_fucking_lightning