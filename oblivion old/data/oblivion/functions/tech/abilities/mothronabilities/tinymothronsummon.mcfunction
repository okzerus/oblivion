summon minecraft:phantom ~ ~ ~ {Health:100,CustomName:'[{"text":"Детёныш Мотрона","color":"dark_red"}]',PersistenceRequired:1b,Tags:[tinymothron,solarmob,spread],ActiveEffects:[{Id:12,Duration:99999,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f},{Name:"generic.attack_damage",Base:20f},{Name:"generic.knockback_resistance",Base:10f}]}
particle flame ~ ~.2 ~ 0 0 0 0 50
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 0.6
particle happy_villager ~ ~.5 ~ 0.2 0.4 0.2 0 30
kill @s