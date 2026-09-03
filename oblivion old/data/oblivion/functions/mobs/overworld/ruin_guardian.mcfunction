###   S P A W N
summon guardian ~ ~ ~ {Invulnerable:1b,DeathLootTable:"oblivion:mobs/overworld/ruin_guardian",CustomName:'[{"text":"Страж руин"}]',Health:30,PersistenceRequired:1b,Tags:["obl.mob","obl.temp.get_id","obl.ruin_guardian","obl.mob.custom_ability","obl.checked"],Attributes:[{Name:"generic.max_health",Base:30f}]}

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Страж руин обнаружен поблизости!","color":"dark_green"}
playsound minecraft:item.trident.riptide_1 hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:entity.guardian.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.35 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   M I S C
summon marker ~ ~ ~ {Tags:["obl.temp.get_id","obl.ocean_ruin.center"]}
scoreboard players add #id_holder.guardian obl.id 1
scoreboard players operation @e[type=guardian,limit=1,sort=nearest,tag=obl.temp.get_id] obl.id = #id_holder.guardian obl.id
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=obl.temp.get_id] obl.id = #id_holder.guardian obl.id
scoreboard players operation @e[type=marker,limit=2,sort=nearest,tag=obl.ocean_ruin.shield,tag=!obl.ocean_ruin.linked,distance=..30] obl.id = #id_holder.guardian obl.id
execute at @e[type=marker,limit=6,sort=nearest,tag=obl.ocean_ruin.container,distance=..30] align xyz run summon minecraft:interaction ~.5 ~ ~.5 {Tags:["obl.ocean_ruin.container_shield"],width:1.01f,height:1.01f}
scoreboard players operation @e[type=interaction,limit=6,sort=nearest,tag=obl.ocean_ruin.container_shield,tag=!obl.ocean_ruin.linked,distance=..30] obl.id = #id_holder.guardian obl.id
tag @e[type=interaction,limit=6,sort=nearest,tag=obl.ocean_ruin.container_shield] add obl.ocean_ruin.linked
tag @e[type=marker,limit=2,sort=nearest,tag=obl.ocean_ruin.shield] add obl.ocean_ruin.linked