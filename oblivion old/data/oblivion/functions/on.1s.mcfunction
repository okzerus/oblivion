schedule function oblivion:on.1s 1s

###   M U S I C

execute as @a[tag=obl.music_playing] run function oblivion:music/main

execute as @e[type=bat,tag=pixie,tag=!pixietransform] at @s run effect give @a[distance=..10] regeneration 2 1
execute as @e[type=bat,tag=pixie,tag=!pixietransform] at @s run effect give @a[distance=10..25] regeneration 2 0
execute as @a[tag=obl.death_boss.cd] at @s run function oblivion:tech/player_death_cooldown

###   U N U S U A L S
## CLEANUP AFTER PLAYER'S DISCONNECT
execute as @e[type=marker,tag=obl.circling_unusual] at @s run function oblivion:tech/unusual/disconnect_cleanup_marker

execute as @e[type=#oblivion:breedable] store result score @s obl.animal_age run data get entity @s Age

execute as @e[type=item,tag=obl.altar.item_in_use] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.01 3

###   B O S S   S T A R T E R S
execute if score blood_moon oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:book",tag:{obl.summoner_item:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=8..}] run tag @s add obl.can_start
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:book",tag:{obl.summoner_item:1b,obl.activated:1b}}},tag=obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/devil
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:book",tag:{obl.summoner_item:1b}}},tag=!obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/devil_deny

execute if score obl.isday oblivion matches 0 unless score obl.isevent oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:rotten_flesh",tag:{obl.summoner_item:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=6..}] run tag @s add obl.can_start
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:rotten_flesh",tag:{obl.summoner_item:1b,obl.activated:1b}}},tag=obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/hunger_armor
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:rotten_flesh",tag:{obl.summoner_item:1b}}},tag=!obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/hunger_deny

execute if score obl.isday oblivion matches 0 unless score obl.isevent oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:raw_iron",tag:{obl.summoner_item:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=1..}] run tag @s add obl.can_start
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:raw_iron",tag:{obl.summoner_item:1b,obl.activated:1b}}},tag=obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/cursed_armor
execute as @e[type=item,tag=!obl.dont_check,nbt={Item:{id:"minecraft:raw_iron",tag:{obl.summoner_item:1b}}},tag=!obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:abilities/bosses/starters/cursed_armor_deny

execute as @e[type=item,tag=obl.boss_failure,nbt={Item:{id:"minecraft:raw_iron",tag:{obl.summoner_item:1b}}}] at @s run function oblivion:abilities/bosses/starters/failure_function

###   B O S S   S U M M O N I N G
execute as @e[type=marker,tag=obl.summoning.devil] at @s unless entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/devil_abilities/transitions/summoning_deny
execute as @e[type=marker,tag=obl.summoning.devil] at @s if entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/devil_abilities/transitions/summoning

execute as @e[type=marker,tag=obl.summoning.hunger] at @s unless entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/hunger_abilities/transitions/summoning_deny
execute as @e[type=marker,tag=obl.summoning.hunger] at @s if entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/hunger_abilities/transitions/summoning

execute as @e[type=marker,tag=obl.summoning.cursed_armor] at @s unless entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/cursed_armor/transitions/summoning_deny
execute as @e[type=marker,tag=obl.summoning.cursed_armor] at @s if entity @e[type=item,tag=obl.summoning,distance=..1] run function oblivion:abilities/bosses/cursed_armor/transitions/summoning

###   E V E N T   S T A R T E R S
execute if score obl.isday oblivion matches 1 unless score obl.isevent oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:magma_cream",tag:{obl.event_summoner:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=5..}] run tag @s add obl.can_start
execute as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:magma_cream",tag:{obl.event_summoner:1b}}},tag=obl.can_start] at @s run function oblivion:events/solar_eclipse/starter

execute if score obl.isday oblivion matches 0 unless score obl.isevent oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:beetroot",tag:{obl.event_summoner:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=5..}] run tag @s add obl.can_start
execute as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:beetroot",tag:{obl.event_summoner:1b}}},tag=obl.can_start] at @s run function oblivion:events/blood_moon/starter

execute if score obl.isday oblivion matches 0 unless score obl.isevent oblivion matches 1 unless score obl.isbossactive oblivion matches 1 as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:flower_pot",tag:{obl.event_summoner:1b,obl.activated:1b}}}] at @s if entity @a[distance=..20,scores={obl.difficulty=5..}] run tag @s add obl.can_start
execute as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{id:"minecraft:flower_pot",tag:{obl.event_summoner:1b}}},tag=obl.can_start] at @s run function oblivion:events/xmas_night/starter

execute as @e[tag=!obl.dont_check,type=minecraft:item,nbt={Item:{tag:{obl.event_summoner:1b}}},tag=!obl.can_start] at @s unless entity @e[type=marker,distance=..5,tag=obl.altar] run function oblivion:events/starter_deny