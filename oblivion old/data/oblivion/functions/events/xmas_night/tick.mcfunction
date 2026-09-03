scoreboard players add nextmob oblivion 1
execute unless entity @e[tag=grinch] run bossbar set oblivion:grinch visible false
execute at @e[tag=grinch] if entity @a[distance=..50] run bossbar set oblivion:grinch visible true

execute store result bossbar oblivion:xmasevent value run scoreboard players get xmaskilledmobs oblivion
execute in overworld unless score grinchalive oblivion matches 1 if score grinchspawn oblivion matches 1 at @r[distance=0..,scores={obl.difficulty=5..}] run function oblivion:night/xmas/grinchspawn

advancement revoke @a only oblivion:mobs/xmas/xmaskill

execute in minecraft:overworld if score nextmob oblivion matches 7 at @a[distance=0..,scores={obl.difficulty=5..}] run function oblivion:night/xmas/xmasmoonmobs

execute if score nextmob oblivion matches 7 run scoreboard players set nextmob oblivion 0

execute as @a[distance=0..,nbt={Dimension:"minecraft:overworld"},scores={obl.difficulty=5..}] at @s run particle minecraft:white_ash ~ ~3 ~ 8 3 8 0 50 normal @a