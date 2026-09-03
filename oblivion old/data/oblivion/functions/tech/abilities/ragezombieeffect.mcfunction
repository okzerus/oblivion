playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 0.6
playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 2 0.6
summon area_effect_cloud ~ ~ ~ {Particle:mobSpell,Radius:4f,RadiusPerTick:-0.005f,RadiusOnUse:-0.05f,Effects:[{Id:7,Amplifier:0,Duration:20}],Duration:300f}