###   S P A W N
summon zombie ~ ~.2 ~ {Motion:[0.0d,0.55d,0.0d],DeathLootTable:"oblivion:mobs/crystodian",IsBaby:1,CustomName:'[{"text":"Кристраж"}]',Health:12,Tags:["obl.mob","obl.crystodian.mid_air","obl.mob.custom_ability","obl.parryable_mob","obl.crystodian","obl.checked","obl.temp.crystodian"],HandItems:[{id:iron_sword,tag:{CustomModelData:41200},Count:1}],ArmorItems:[{id:leather_boots,tag:{display:{color:11553007}},Count:1},{id:leather_leggings,tag:{display:{color:11553007}},Count:1},{id:leather_chestplate,tag:{display:{color:11553007}},Count:1},{id:budding_amethyst,Count:1}],Attributes:[{Name:"generic.movement_speed",Base:0.18f},{Name:"generic.attack_damage",Base:-2f},{Name:"generic.max_health",Base:12f}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Кристраж обнаружен поблизости!","color":"green"}
playsound minecraft:block.amethyst_block.break hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.6 0.1
playsound minecraft:entity.zombie.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.35 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   M I S C
playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 1.3
particle block amethyst_block ~ ~ ~ 0.15 0 0.15 1 40
execute as @a[distance=..1.5] run damage @s 7 minecraft:explosion by @e[type=zombie,tag=obl.temp.crystodian,limit=1,sort=nearest]
scoreboard players set @e[type=zombie,tag=obl.temp.crystodian,limit=1,sort=nearest] obl.mob.ability_cd 40
tag @e[type=zombie,tag=obl.crystodian] remove obl.temp.crystodian
kill @s[type=marker]