summon zombie ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],IsBaby:1,CustomName:'[{"text":"Кристраж"}]',Health:12,Tags:["obl.mob","obl.crystodian.mid_air","obl.mob.custom_ability","obl.parryable_mob","obl.crystodian","obl.checked","obl.temp.crystodian"],HandItems:[{id:iron_sword,tag:{CustomModelData:41200},Count:1}],ArmorItems:[{id:leather_boots,tag:{display:{color:11553007}},Count:1},{id:leather_leggings,tag:{display:{color:11553007}},Count:1},{id:leather_chestplate,tag:{display:{color:11553007}},Count:1},{id:budding_amethyst,Count:1}],Attributes:[{Name:"generic.movement_speed",Base:0.18f},{Name:"generic.attack_damage",Base:-2f},{Name:"generic.max_health",Base:12f}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}
scoreboard players set @e[type=zombie,tag=obl.temp.crystodian,limit=1,sort=nearest] obl.mob.ability_cd 40
tag @e[type=zombie,tag=obl.crystodian] remove obl.temp.crystodian

playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 0.7 2
playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 0.9
particle block amethyst_block ~ ~.3 ~ 0.15 0 0.15 1 50

scoreboard players set @s obl.mob.ability_cd 70
data merge entity @s {NoAI:0b}
scoreboard players reset @s obl.id.reflect