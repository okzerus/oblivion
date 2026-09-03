execute if score @s abilities matches 20 run playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 10 0.1
execute if score @s abilities matches 20 run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 10 1.5
execute if score @s abilities matches 20 run particle minecraft:end_rod ~ ~6 ~ 2 0 2 0 150

execute if score @s abilities matches 20 run execute at @s run summon potion ~5 ~7 ~ {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s abilities matches 20 run execute at @s run summon potion ~-5 ~7 ~ {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s abilities matches 20 run execute at @s run summon potion ~ ~7 ~5 {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s abilities matches 20 run execute at @s run summon potion ~ ~7 ~-5 {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}

execute if score @s abilities matches 25 run execute at @r[distance=..40] run summon potion ~ ~7 ~ {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s abilities matches 30 run execute at @r[distance=..40] run summon potion ~ ~7 ~ {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}