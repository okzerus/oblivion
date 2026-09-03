###   S P A W N
summon skeleton_horse ~ ~ ~ {Tamed:1b,PersistenceRequired:1b,Tags:["obl.mob","obl.mount"],Attributes:[{Name:"generic.max_health",Base:30f}],Passengers:[{id:drowned,DeathLootTable:"minecraft:empty",IsBaby:0,CustomName:'[{"text":"Командир"}]',Health:35,PersistenceRequired:1b,Tags:["obl.squad.commander","obl.mob","obl.trident_captain","obl.temp.leash_main"],HandItems:[{id:trident,Count:1}],ArmorItems:[{},{},{id:golden_chestplate,Count:1},{id:blue_banner,tag:{BlockEntityTag:{Patterns:[{Color:9,Pattern:"cs"},{Color:0,Pattern:"ts"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"ss"},{Color:11,Pattern:"bo"},{Color:9,Pattern:"gru"}]}},Count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:35f}]}]}
summon drowned ~ ~ ~ {IsBaby:0,PersistenceRequired:1b,Tags:["obl.mob","obl.squad.part","obl.temp.leash_part"]}
summon drowned ~ ~ ~ {IsBaby:0,PersistenceRequired:1b,Tags:["obl.mob","obl.squad.part","obl.temp.leash_part"],ArmorItems:[{},{},{},{id:golden_helmet,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
summon drowned ~ ~ ~ {IsBaby:0,PersistenceRequired:1b,Tags:["obl.mob","obl.squad.part","obl.temp.leash_part"],HandItems:[{id:fishing_rod,Count:1}],HandDropChances:[0f]}
summon drowned ~ ~ ~ {IsBaby:0,PersistenceRequired:1b,Tags:["obl.mob","obl.squad.part","obl.temp.leash_part"],HandItems:[{id:fishing_rod,Count:1}],ArmorItems:[{},{},{},{id:golden_helmet,Count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}
summon drowned ~ ~ ~ {IsBaby:1,PersistenceRequired:1b,Tags:["obl.mob","obl.squad.part","obl.temp.leash_part"],HandItems:[{},{id:nautilus_shell,Count:1}],HandDropChances:[0f,0.5f]}

###   M O D I F Y
execute as @e[type=drowned,tag=obl.temp.leash_part] run data modify entity @s Leash.UUID set from entity @e[type=drowned,tag=obl.temp.leash_main,limit=1,sort=nearest] UUID
tag @e[type=drowned] remove obl.temp.leash_part
tag @e[type=drowned] remove obl.temp.leash_main

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Вражеский отряд (Трезубец) обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.drowned.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.6 0.1
playsound minecraft:item.armor.equip_chain hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tp @s[type=!player] ~ -256 ~
kill @s[type=!player]