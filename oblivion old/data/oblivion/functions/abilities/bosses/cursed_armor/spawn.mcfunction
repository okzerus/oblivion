###   S P A W N
summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Проклятые доспехи","color":"dark_gray"}]',Health:1024,Silent:1b,Tags:["obl.boss","obl.mob","obl.boss.cursed_armor","obl.can_be_stunned","obl.phase.1","obl.dontreplace","obl.difficultychanged"],HandItems:[{id:netherite_sword,tag:{CustomModelData:7171,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Name:"generic.attack_damage",UUID:[I;-123722,19341,9841,-38682]}]},Count:1}],ArmorItems:[{id:netherite_boots,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_leggings,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_chestplate,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_helmet,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1}],Attributes:[{Name:"generic.movement_speed",Base:0.17f},{Name:"generic.armor",Base:17f},{Name:"generic.knockback_resistance",Base:0.45f},{Name:"generic.attack_damage",Base:10f},{Name:"generic.max_health",Base:1024f}]}
tp @e[type=wither_skeleton,tag=obl.boss.cursed_armor,limit=1,sort=nearest] @e[type=wither_skeleton,tag=obl.fake.cursed_armor,limit=1,sort=nearest]
tp @e[type=wither_skeleton,tag=obl.fake.cursed_armor] ~ ~-256 ~
kill @e[type=wither_skeleton,tag=obl.fake.cursed_armor]
kill @e[type=marker,tag=obl.summoning.cursed_armor]


###   S C O R E B O A R D S
scoreboard players set obl.disable_fake_bossbar oblivion 0
scoreboard players set cursed_armor_alive oblivion 1
scoreboard players set obl.isbossactive oblivion 1
scoreboard players set @e[tag=obl.boss.cursed_armor,limit=1] obl.fake_health 300
scoreboard players set obl.max_damage oblivion 50

###   S O U N D S
playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.elder_guardian.curse.ambient hostile @s ~ ~ ~ 1 0.1

###   F U N C T I O N S
tellraw @a ["",{"text":"Игрок ","color":"gray"},{"selector":"@p","color":"dark_gray"},{"text":" сейчас будет плавать в проклятиях!","color":"gray"}]
tag @a[distance=..50,scores={obl.difficulty=1..}] add obl.in_battle.boss
tag @a[distance=..50,scores={obl.difficulty=1..}] add obl.in_battle.cursed_armor
tag @a[distance=..50,scores={obl.difficulty=1..}] remove obl.can_skip_transition
title @a[distance=..50,scores={obl.difficulty=1..}] subtitle ""
execute as @a[distance=..50,scores={obl.difficulty=1..}] if predicate oblivion:items/hold.totem_of_dying.both run tag @s add obl.in_battle.no_hit
execute as @a[tag=obl.in_battle.cursed_armor] at @s unless entity @s[tag=obl.beaten.cursed_armor] run tag @e[type=wither_skeleton,tag=obl.boss.cursed_armor,limit=1,sort=nearest] add obl.first_appearance
advancement grant @a[tag=obl.in_battle.cursed_armor] only oblivion:advancements/mobs/cursedarmorsummon
execute as @e[type=item,limit=1,sort=nearest] run kill @s
execute as @a[tag=obl.in_battle.cursed_armor] run function oblivion:abilities/bosses/battle_start

###   B O S S B A R
bossbar add oblivion:boss_health "Проклятые доспехи"
bossbar set oblivion:boss_health name [{"text":"< 💀 >  Проклятые доспехи  < 💀 >","color":"gray"}]
bossbar set oblivion:boss_health max 300
bossbar set oblivion:boss_health value 300
bossbar set oblivion:boss_health visible true
bossbar set oblivion:boss_health color white
bossbar set oblivion:boss_health style notched_20
bossbar set oblivion:boss_health players @a[tag=obl.in_battle.cursed_armor]

# stopsound @a[tag=obl.in_battle.cursed_armor] voice
# scoreboard players set @a[tag=obl.in_battle.cursed_armor] cursedmusic 328