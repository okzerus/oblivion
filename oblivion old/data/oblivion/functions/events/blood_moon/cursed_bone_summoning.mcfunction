particle dust 1 0 0 0.5 ~ ~.2 ~ 0.1 0.1 0.1 0 2
playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1.7
data merge entity @s {PickupDelay:32767,Invulnerable:1b,Age:-32768}

execute if score @s obl.cursed_bone.amount matches 1 unless score @s obl.cursed_bone.counting matches 1.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 1 if score @s obl.cursed_bone.counting matches 1.. run kill @s

execute if score @s obl.cursed_bone.amount matches 2 unless score @s obl.cursed_bone.counting matches 2.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 2 if score @s obl.cursed_bone.counting matches 2.. run kill @s

execute if score @s obl.cursed_bone.amount matches 3 unless score @s obl.cursed_bone.counting matches 3.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 3 if score @s obl.cursed_bone.counting matches 3.. run kill @s

execute if score @s obl.cursed_bone.amount matches 4 unless score @s obl.cursed_bone.counting matches 5.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 4 if score @s obl.cursed_bone.counting matches 5.. run kill @s

execute if score @s obl.cursed_bone.amount matches 5 unless score @s obl.cursed_bone.counting matches 5.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 5 if score @s obl.cursed_bone.counting matches 5.. run kill @s

execute if score @s obl.cursed_bone.amount matches 6 unless score @s obl.cursed_bone.counting matches 6.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 6 if score @s obl.cursed_bone.counting matches 6.. run kill @s

execute if score @s obl.cursed_bone.amount matches 7 unless score @s obl.cursed_bone.counting matches 7.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 7 if score @s obl.cursed_bone.counting matches 7.. run kill @s

execute if score @s obl.cursed_bone.amount matches 8 unless score @s obl.cursed_bone.counting matches 8.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 8 if score @s obl.cursed_bone.counting matches 8.. run kill @s

execute if score @s obl.cursed_bone.amount matches 9 unless score @s obl.cursed_bone.counting matches 9.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 9 if score @s obl.cursed_bone.counting matches 9.. run kill @s

execute if score @s obl.cursed_bone.amount matches 10 unless score @s obl.cursed_bone.counting matches 10.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 10 if score @s obl.cursed_bone.counting matches 10.. run kill @s

execute if score @s obl.cursed_bone.amount matches 11 unless score @s obl.cursed_bone.counting matches 11.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 11 if score @s obl.cursed_bone.counting matches 11.. run kill @s

execute if score @s obl.cursed_bone.amount matches 12 unless score @s obl.cursed_bone.counting matches 12.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 12 if score @s obl.cursed_bone.counting matches 12.. run kill @s

execute if score @s obl.cursed_bone.amount matches 13 unless score @s obl.cursed_bone.counting matches 13.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 13 if score @s obl.cursed_bone.counting matches 13.. run kill @s

execute if score @s obl.cursed_bone.amount matches 14 unless score @s obl.cursed_bone.counting matches 14.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 14 if score @s obl.cursed_bone.counting matches 14.. run kill @s

execute if score @s obl.cursed_bone.amount matches 15 unless score @s obl.cursed_bone.counting matches 15.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 15 if score @s obl.cursed_bone.counting matches 15.. run kill @s

execute if score @s obl.cursed_bone.amount matches 16 unless score @s obl.cursed_bone.counting matches 16.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 16 if score @s obl.cursed_bone.counting matches 16.. run kill @s

execute if score @s obl.cursed_bone.amount matches 17 unless score @s obl.cursed_bone.counting matches 17.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 17 if score @s obl.cursed_bone.counting matches 17.. run kill @s

execute if score @s obl.cursed_bone.amount matches 18 unless score @s obl.cursed_bone.counting matches 18.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 18 if score @s obl.cursed_bone.counting matches 18.. run kill @s

execute if score @s obl.cursed_bone.amount matches 19 unless score @s obl.cursed_bone.counting matches 19.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 19 if score @s obl.cursed_bone.counting matches 19.. run kill @s

execute if score @s obl.cursed_bone.amount matches 20 unless score @s obl.cursed_bone.counting matches 20.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 20 if score @s obl.cursed_bone.counting matches 20.. run kill @s

execute if score @s obl.cursed_bone.amount matches 21 unless score @s obl.cursed_bone.counting matches 21.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 21 if score @s obl.cursed_bone.counting matches 21.. run kill @s

execute if score @s obl.cursed_bone.amount matches 22 unless score @s obl.cursed_bone.counting matches 22.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 22 if score @s obl.cursed_bone.counting matches 22.. run kill @s

execute if score @s obl.cursed_bone.amount matches 23 unless score @s obl.cursed_bone.counting matches 23.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 23 if score @s obl.cursed_bone.counting matches 23.. run kill @s

execute if score @s obl.cursed_bone.amount matches 24 unless score @s obl.cursed_bone.counting matches 24.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 24 if score @s obl.cursed_bone.counting matches 24.. run kill @s

execute if score @s obl.cursed_bone.amount matches 25 unless score @s obl.cursed_bone.counting matches 25.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 25 if score @s obl.cursed_bone.counting matches 25.. run kill @s

execute if score @s obl.cursed_bone.amount matches 26 unless score @s obl.cursed_bone.counting matches 26.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 26 if score @s obl.cursed_bone.counting matches 26.. run kill @s

execute if score @s obl.cursed_bone.amount matches 27 unless score @s obl.cursed_bone.counting matches 27.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 27 if score @s obl.cursed_bone.counting matches 27.. run kill @s

execute if score @s obl.cursed_bone.amount matches 28 unless score @s obl.cursed_bone.counting matches 28.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 28 if score @s obl.cursed_bone.counting matches 28.. run kill @s

execute if score @s obl.cursed_bone.amount matches 29 unless score @s obl.cursed_bone.counting matches 29.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 29 if score @s obl.cursed_bone.counting matches 29.. run kill @s

execute if score @s obl.cursed_bone.amount matches 30 unless score @s obl.cursed_bone.counting matches 30.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 30 if score @s obl.cursed_bone.counting matches 30.. run kill @s

execute if score @s obl.cursed_bone.amount matches 31 unless score @s obl.cursed_bone.counting matches 31.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 31 if score @s obl.cursed_bone.counting matches 31.. run kill @s

execute if score @s obl.cursed_bone.amount matches 32 unless score @s obl.cursed_bone.counting matches 32.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 32 if score @s obl.cursed_bone.counting matches 32.. run kill @s

execute if score @s obl.cursed_bone.amount matches 33 unless score @s obl.cursed_bone.counting matches 33.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 33 if score @s obl.cursed_bone.counting matches 33.. run kill @s

execute if score @s obl.cursed_bone.amount matches 34 unless score @s obl.cursed_bone.counting matches 34.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 34 if score @s obl.cursed_bone.counting matches 34.. run kill @s

execute if score @s obl.cursed_bone.amount matches 35 unless score @s obl.cursed_bone.counting matches 35.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 35 if score @s obl.cursed_bone.counting matches 35.. run kill @s

execute if score @s obl.cursed_bone.amount matches 36 unless score @s obl.cursed_bone.counting matches 36.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 36 if score @s obl.cursed_bone.counting matches 36.. run kill @s

execute if score @s obl.cursed_bone.amount matches 37 unless score @s obl.cursed_bone.counting matches 37.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 37 if score @s obl.cursed_bone.counting matches 37.. run kill @s

execute if score @s obl.cursed_bone.amount matches 38 unless score @s obl.cursed_bone.counting matches 38.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 38 if score @s obl.cursed_bone.counting matches 38.. run kill @s

execute if score @s obl.cursed_bone.amount matches 39 unless score @s obl.cursed_bone.counting matches 39.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 39 if score @s obl.cursed_bone.counting matches 39.. run kill @s

execute if score @s obl.cursed_bone.amount matches 40 unless score @s obl.cursed_bone.counting matches 40.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 40 if score @s obl.cursed_bone.counting matches 40.. run kill @s

execute if score @s obl.cursed_bone.amount matches 41 unless score @s obl.cursed_bone.counting matches 41.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 41 if score @s obl.cursed_bone.counting matches 41.. run kill @s

execute if score @s obl.cursed_bone.amount matches 42 unless score @s obl.cursed_bone.counting matches 42.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 42 if score @s obl.cursed_bone.counting matches 42.. run kill @s

execute if score @s obl.cursed_bone.amount matches 43 unless score @s obl.cursed_bone.counting matches 43.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 43 if score @s obl.cursed_bone.counting matches 43.. run kill @s

execute if score @s obl.cursed_bone.amount matches 44 unless score @s obl.cursed_bone.counting matches 44.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 44 if score @s obl.cursed_bone.counting matches 44.. run kill @s

execute if score @s obl.cursed_bone.amount matches 45 unless score @s obl.cursed_bone.counting matches 45.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 45 if score @s obl.cursed_bone.counting matches 45.. run kill @s

execute if score @s obl.cursed_bone.amount matches 46 unless score @s obl.cursed_bone.counting matches 46.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 46 if score @s obl.cursed_bone.counting matches 46.. run kill @s

execute if score @s obl.cursed_bone.amount matches 47 unless score @s obl.cursed_bone.counting matches 47.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 47 if score @s obl.cursed_bone.counting matches 47.. run kill @s

execute if score @s obl.cursed_bone.amount matches 48 unless score @s obl.cursed_bone.counting matches 48.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 48 if score @s obl.cursed_bone.counting matches 48.. run kill @s

execute if score @s obl.cursed_bone.amount matches 49 unless score @s obl.cursed_bone.counting matches 49.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 49 if score @s obl.cursed_bone.counting matches 49.. run kill @s

execute if score @s obl.cursed_bone.amount matches 50 unless score @s obl.cursed_bone.counting matches 50.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 50 if score @s obl.cursed_bone.counting matches 50.. run kill @s

execute if score @s obl.cursed_bone.amount matches 51 unless score @s obl.cursed_bone.counting matches 51.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 51 if score @s obl.cursed_bone.counting matches 51.. run kill @s

execute if score @s obl.cursed_bone.amount matches 52 unless score @s obl.cursed_bone.counting matches 52.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 52 if score @s obl.cursed_bone.counting matches 52.. run kill @s

execute if score @s obl.cursed_bone.amount matches 53 unless score @s obl.cursed_bone.counting matches 53.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 53 if score @s obl.cursed_bone.counting matches 53.. run kill @s

execute if score @s obl.cursed_bone.amount matches 54 unless score @s obl.cursed_bone.counting matches 54.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 54 if score @s obl.cursed_bone.counting matches 54.. run kill @s

execute if score @s obl.cursed_bone.amount matches 55 unless score @s obl.cursed_bone.counting matches 55.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 55 if score @s obl.cursed_bone.counting matches 55.. run kill @s

execute if score @s obl.cursed_bone.amount matches 56 unless score @s obl.cursed_bone.counting matches 56.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 56 if score @s obl.cursed_bone.counting matches 56.. run kill @s

execute if score @s obl.cursed_bone.amount matches 57 unless score @s obl.cursed_bone.counting matches 57.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 57 if score @s obl.cursed_bone.counting matches 57.. run kill @s

execute if score @s obl.cursed_bone.amount matches 58 unless score @s obl.cursed_bone.counting matches 58.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 58 if score @s obl.cursed_bone.counting matches 58.. run kill @s

execute if score @s obl.cursed_bone.amount matches 59 unless score @s obl.cursed_bone.counting matches 59.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 59 if score @s obl.cursed_bone.counting matches 59.. run kill @s

execute if score @s obl.cursed_bone.amount matches 60 unless score @s obl.cursed_bone.counting matches 60.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 60 if score @s obl.cursed_bone.counting matches 60.. run kill @s

execute if score @s obl.cursed_bone.amount matches 61 unless score @s obl.cursed_bone.counting matches 61.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 61 if score @s obl.cursed_bone.counting matches 61.. run kill @s

execute if score @s obl.cursed_bone.amount matches 62 unless score @s obl.cursed_bone.counting matches 62.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 62 if score @s obl.cursed_bone.counting matches 62.. run kill @s

execute if score @s obl.cursed_bone.amount matches 63 unless score @s obl.cursed_bone.counting matches 63.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 63 if score @s obl.cursed_bone.counting matches 63.. run kill @s

execute if score @s obl.cursed_bone.amount matches 64 unless score @s obl.cursed_bone.counting matches 64.. run summon skeleton ~ ~1 ~ {DeathLootTable:"oblivion:mobs/events/blood_moon_cursed_skeleton",CustomName:'[{"text":"Проклятый скелет","color":"red"}]',Health:10,Tags:[obl.spread,obl.cursed_skeleton,obl.blood_mob],Attributes:[{Name:"generic.attack_damage",Base:4f},{Name:"generic.max_health",Base:10f}]}
execute if score @s obl.cursed_bone.amount matches 64 if score @s obl.cursed_bone.counting matches 64.. run advancement grant @a[distance=..30] only oblivion:advancements/events/stackskeletons
execute if score @s obl.cursed_bone.amount matches 64 if score @s obl.cursed_bone.counting matches 64.. run kill @s

scoreboard players add @s obl.cursed_bone.counting 1