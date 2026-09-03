tp @s ~ ~ ~
particle dust 0 0 0 1.5 ^ ^ ^ 0 0 0 0 1
particle dust 0 0 0 1.5 ^ ^ ^.3 0 0 0 0 1
particle dust 0 0 0 1.5 ^ ^ ^.6 0 0 0 0 1
particle dust 0 0 0 1.5 ^ ^ ^.9 0 0 0 0 1
playsound minecraft:item.trident.hit hostile @a ~ ~ ~ 0.25 1.2
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 0.25 2
scoreboard players add @s obl.beam_progress 1


execute positioned ^ ^ ^-1.2 if entity @a[distance=..2] run function oblivion:tech/projectiles/black_death_spike/hit

execute positioned ^ ^ ^-2.4 if entity @a[distance=..2] run scoreboard players set @s obl.beam_progress 30
execute if score @s obl.beam_progress matches 30.. run kill @s
execute unless score @s obl.beam_progress matches 30.. positioned ^ ^ ^1.2 run function oblivion:tech/raycast/beam_instant/black_death_spike
tag @a remove obl.temp.death_spear.hit