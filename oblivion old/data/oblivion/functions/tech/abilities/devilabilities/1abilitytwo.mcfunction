execute if score @s abilities matches 120 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
execute if score @s abilities matches 120 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 150
execute if score @s abilities matches 120..155 run particle minecraft:lava ~ ~-4.8 ~ 5 0 5 0 10
execute if score @s abilities matches 120..170 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 1
execute if score @s abilities matches 120..170 run particle minecraft:falling_dust black_concrete ~ ~ ~ 0.3 0 0.3 0 15

execute if score @s abilities matches 127 run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if score @s abilities matches 127 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 127 run tp @s ~ ~5 ~ ~ -70
execute if score @s abilities matches 127 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5

execute if score @s abilities matches 127 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
execute if score @s abilities matches 127 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 30
execute if score @s abilities matches 127 run particle minecraft:flame ~ ~1 ~ 0.01 3 0.01 0 100

execute if score @s abilities matches 137 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.3
execute if score @s abilities matches 137 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 50
execute if score @s abilities matches 137 run particle minecraft:flame ~ ~1 ~ 0.01 3 0.01 0 100

execute if score @s abilities matches 145 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.6
execute if score @s abilities matches 145 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 70
execute if score @s abilities matches 145 run particle minecraft:flame ~ ~1 ~ 0.01 3 0.01 0 100

execute if score @s abilities matches 155 run summon area_effect_cloud ~ ~-5 ~ {Particle:flame,Radius:10f,RadiusPerTick:-0.05f,Duration:500,Effects:[{Id:2,Amplifier:4,Duration:200},{Id:17,Amplifier:9,Duration:200},{Id:18,Amplifier:4,Duration:200},{Id:20,Amplifier:4,Duration:200}]}
execute if score @s abilities matches 155 run summon lightning_bolt ~ ~-5 ~
execute if score @s abilities matches 155 run particle minecraft:flame ~ ~-5 ~ 0 0 0 0.05 250
execute if score @s abilities matches 155 run particle minecraft:flame ~ ~1 ~ 0.01 3 0.01 0 100



execute if score @s abilities matches 170 run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if score @s abilities matches 170 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 170 run tp @s ~ ~-5 ~
execute if score @s abilities matches 170 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5