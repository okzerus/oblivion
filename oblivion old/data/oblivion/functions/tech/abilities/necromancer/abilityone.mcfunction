execute if score @s abilities matches 20 run playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 20 run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 20 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 20..27 run particle minecraft:dust 1 0 0 1 ~ ~.3 ~ 2 0 2 0 20

execute if score @s abilities matches 27 run execute at @s run summon minecraft:skeleton ~1 ~ ~ {CustomName:'[{"text":"Миньон"}]',Health:15,Tags:[minion,necrominion],HandItems:[{id:iron_hoe,Count:1}],HandDropChances:[0f],Attributes:[{Name:"generic.max_health",Base:15f},{Name:"generic.movement_speed",Base:0.2f}]}
execute if score @s abilities matches 27 run execute at @s run summon minecraft:skeleton ~ ~ ~1 {CustomName:'[{"text":"Миньон"}]',Health:15,Tags:[minion,necrominion],HandItems:[{id:iron_hoe,Count:1}],HandDropChances:[0f],Attributes:[{Name:"generic.max_health",Base:15f},{Name:"generic.movement_speed",Base:0.2f}]}
execute if score @s abilities matches 27 run execute at @s run summon minecraft:skeleton ~-1 ~ ~ {CustomName:'[{"text":"Миньон"}]',Health:15,Tags:[minion,necrominion],HandItems:[{id:iron_hoe,Count:1}],HandDropChances:[0f],Attributes:[{Name:"generic.max_health",Base:15f},{Name:"generic.movement_speed",Base:0.2f}]}
execute if score @s abilities matches 27 run execute at @s run summon minecraft:skeleton ~ ~ ~-1 {CustomName:'[{"text":"Миньон"}]',Health:15,Tags:[minion,necrominion],HandItems:[{id:iron_hoe,Count:1}],HandDropChances:[0f],Attributes:[{Name:"generic.max_health",Base:15f},{Name:"generic.movement_speed",Base:0.2f}]}
execute if score @s abilities matches 27 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1
execute if score @s abilities matches 27 run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1
execute if score @s abilities matches 27 run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 1
execute if score @s abilities matches 27 run particle minecraft:block redstone_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150

execute if score @s abilities matches 32..35 run tp @s ~ ~ ~ ~ -90
execute if score @s abilities matches 32 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 32 run summon potion ~ ~7 ~ {CustomPotionColor:62207,Item:{id:lingering_potion,Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0,Amplifier:1},{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s abilities matches 32 run particle minecraft:dust 1 0 0 1 ~ ~5 ~ 0.2 3 0.2 0 200
execute if score @s abilities matches 35 run execute as @e[tag=minion,limit=4,distance=..10,sort=nearest] at @s run particle dust 0.6 0 0 4 ~ ~6.3 ~ 1.2 0 1.2 0 50 force @a
execute if score @s abilities matches 35 run execute as @e[tag=minion,limit=4,distance=..10,sort=nearest] at @s run function oblivion:tech/bloodmoonlightning
execute if score @s abilities matches 35 at @s run data merge entity @s {NoAI:0b}