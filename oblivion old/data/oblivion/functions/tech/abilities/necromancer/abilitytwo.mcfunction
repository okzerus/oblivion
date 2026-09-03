execute if score @s abilities matches 120 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 120 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 50

execute if score @s abilities matches 125 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 125 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 125 run tp @s ~ ~5 ~ ~ 40
execute if score @s abilities matches 125 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 125..170 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 1

execute if score @s abilities matches 130 run summon area_effect_cloud ~ ~-5 ~ {Particle:mobSpell,Radius:4f,RadiusPerTick:-0.1f,Effects:[{Id:20,Amplifier:1,Duration:40}],Duration:300f}
execute if score @s abilities matches 130 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 5
execute if score @s abilities matches 130 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 5
execute if score @s abilities matches 130 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1.5

execute if score @s abilities matches 140 run summon area_effect_cloud ~ ~-5 ~ {Particle:mobSpell,Radius:6f,RadiusPerTick:-0.11f,Effects:[{Id:20,Amplifier:1,Duration:80}],Duration:300f}
execute if score @s abilities matches 140 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 25
execute if score @s abilities matches 140 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 25
execute if score @s abilities matches 140 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1

execute if score @s abilities matches 150 run summon area_effect_cloud ~ ~-5 ~ {Particle:mobSpell,Radius:8f,RadiusPerTick:-0.12f,Effects:[{Id:20,Amplifier:1,Duration:120}],Duration:300f}
execute if score @s abilities matches 150 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 45
execute if score @s abilities matches 150 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 45
execute if score @s abilities matches 150 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.8

execute if score @s abilities matches 157 run summon area_effect_cloud ~ ~-5 ~ {Particle:mobSpell,Radius:10f,RadiusPerTick:-0.14f,Effects:[{Id:20,Amplifier:1,Duration:160}],Duration:300f}
execute if score @s abilities matches 157 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 65
execute if score @s abilities matches 157 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 65
execute if score @s abilities matches 157 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.6

execute if score @s abilities matches 163 run summon area_effect_cloud ~ ~-5 ~ {Particle:mobSpell,Radius:12f,RadiusPerTick:-0.16f,Effects:[{Id:20,Amplifier:1,Duration:260}],Duration:300f}
execute if score @s abilities matches 163 run particle minecraft:soul ~ ~1 ~ 0 0 0 0.2 85
execute if score @s abilities matches 163 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 85
execute if score @s abilities matches 163 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.4

execute if score @s abilities matches 170 run data merge entity @s {NoAI:0b}
execute if score @s abilities matches 170 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 170 run tp @s ~ ~-5 ~
execute if score @s abilities matches 170 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5