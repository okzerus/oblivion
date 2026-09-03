playsound entity.spider.ambient hostile @a ~ ~ ~ 1 0.5
particle happy_villager ~ ~.5 ~ 0.4 0.4 0.4 0 30
tp @s ~ ~-256 ~
summon minecraft:spider ~ ~ ~ {CustomName:'[{"text":"Мощный паук"}]',Health:35,Tags:[motherspider],ActiveEffects:[{Id:1,Duration:99999,Amplifier:1,ShowParticles:1b},{Id:5,Duration:99999,Amplifier:2,ShowParticles:1b}],Attributes:[{Name:"generic.max_health",Base:35f}]}