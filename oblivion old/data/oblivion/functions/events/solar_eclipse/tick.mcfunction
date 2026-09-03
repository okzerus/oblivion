execute unless entity @e[tag=mothron] run bossbar set mothron visible false
execute at @e[tag=mothron] if entity @a[distance=..50] run bossbar set mothron visible true

execute at @a[scores={obl.difficulty=5..}] as @e[type=item,distance=..100,tag=!obl.itemprotected,tag=!mothronegg] run data merge entity @s {Invulnerable:1b,Tags:["obl.itemprotected"]}

scoreboard players add nextmob oblivion 1
execute in overworld unless score mothronalive oblivion matches 1 if score mothronspawn oblivion matches 1 at @r[distance=0..,scores={obl.difficulty=5..}] run function oblivion:day/mothronspawn

execute in minecraft:overworld if score nextmob oblivion matches 7 at @a[distance=0..,scores={obl.difficulty=5..}] run function oblivion:day/solareclipsemobs
execute in minecraft:overworld if score nextmob oblivion matches 2 as @a[distance=0..,scores={obl.difficulty=5..}] at @s run function oblivion:day/solareclipsemeteor
execute in minecraft:overworld if score nextmob oblivion matches 4 at @e[tag=solarmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score nextmob oblivion matches 7 run scoreboard players set nextmob oblivion 0

execute as @a[distance=0..,nbt={Dimension:"minecraft:overworld"},scores={obl.difficulty=5..}] at @s run particle minecraft:flame ~ ~3 ~ 8 3 8 0 2 normal @s

execute in minecraft:overworld run effect clear @a[distance=0..,scores={obl.difficulty=5..}] fire_resistance

gamerule mobGriefing false