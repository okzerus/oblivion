tag @s add obl.temp.murasama.executing_ability
schedule function oblivion:items/abilities/murasama/ability.end 1t

# AOE
summon minecraft:marker ^6 ^ ^1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^4 ^ ^-.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^2 ^ ^-1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^0 ^ ^-1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-2 ^ ^-1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-4 ^ ^-.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-6 ^ ^1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^4 ^ ^1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^2 ^ ^.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^0 ^ ^.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-2 ^ ^.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-4 ^ ^1.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^2 ^ ^2.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^0 ^ ^2.5 {Tags:[obl.temp.murasama_ability]}
summon minecraft:marker ^-2 ^ ^2.5 {Tags:[obl.temp.murasama_ability]}
execute at @e[type=marker,tag=obl.temp.murasama_ability] run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.3 15 normal @a
execute at @e[type=marker,tag=obl.temp.murasama_ability] run tag @e[type=#oblivion:aoe,distance=..2.25] add obl.damaged_area
kill @e[type=marker,tag=obl.temp.murasama_ability]
tag @s remove obl.damaged_area

# Blood particles
execute at @e[type=#oblivion:canbleedparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 50 force
execute at @e[type=#oblivion:canbleedgreenparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block green_wool ~ ~.5 ~ 0.2 0.2 0.2 0 50 force
execute at @e[type=#oblivion:canbleedpurpleparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block purple_wool ~ ~1.5 ~ 0.2 0.4 0.2 0 50 force
execute at @e[type=#oblivion:canbleedparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0.7 0 0 2 ~ ~.2 ~ 0.3 0.6 0.3 0 50 force
execute at @e[type=#oblivion:canbleedgreenparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0 0.7 0 2 ~ ~.2 ~ 0.2 0.6 0.2 0 50 force
execute at @e[type=#oblivion:canbleedpurpleparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0.7 0 0.7 2 ~ ~.9 ~ 0.2 0.4 0.2 0 50 force

# Damage
tag @s add obl.temp.owner
execute as @e[type=#oblivion:aoe,type=!player,tag=obl.damaged_area] run damage @s 250 trident by @p[tag=obl.temp.owner] from @p[tag=obl.temp.owner]
execute as @e[type=player,tag=obl.damaged_area] run damage @s 100 trident by @p[tag=obl.temp.owner] from @p[tag=obl.temp.owner]

execute as @e[type=#oblivion:aoe,tag=obl.damaged_area] at @s if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 10 0 false
execute as @e[type=#oblivion:aoe,tag=obl.damaged_area] at @s if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

# Cleanup
tag @s remove obl.temp.owner
tag @e[type=#oblivion:aoe,tag=obl.damaged_area] remove obl.damaged_area
scoreboard players set @s obl.murasama.time.ability 0
tag @s remove obl.murasama_offhand
function oblivion:items/abilities/murasama/ability.cd
effect clear @s darkness
scoreboard players remove @s obl.murasama.blood 30

# Sound
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 3 0.6
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 3 1.6
playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 3 0.7

playsound minecraft:item.trident.thunder hostile @a ^ ^ ^ 0.6 1.7
playsound minecraft:item.trident.thunder hostile @a ^-3 ^ ^-1 0.6 1.7
playsound minecraft:item.trident.thunder hostile @a ^3 ^ ^-1 0.6 1.7
playsound minecraft:item.trident.return hostile @a ^ ^ ^ 0.6 1.7
playsound minecraft:item.trident.return hostile @a ^-3 ^ ^-1 0.6 1.7
playsound minecraft:item.trident.return hostile @a ^3 ^ ^-1 0.6 1.7
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^ 0.6 1.7
playsound minecraft:entity.player.attack.sweep hostile @a ^-3 ^ ^-1 0.6 1.7
playsound minecraft:entity.player.attack.sweep hostile @a ^3 ^ ^-1 0.6 1.7


execute positioned ^6 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^6 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^5 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^5 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^5 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-3.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-3.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-3.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-5 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-5 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-5 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-6 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-6 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^4 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-4 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-3 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^0 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-1 ^ ^-.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^2.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^1.5 run function oblivion:items/abilities/murasama/ability.block_breaking
execute positioned ^-2 ^ ^.5 run function oblivion:items/abilities/murasama/ability.block_breaking


### Particle Image Function
### Version: 1.0.4
### Width: 64
### Height: 64
### ParticleType: dust

### This file was generated by Kemo431's Particle-Converter.
### Download Link: https://github.com/kemo14331/Particle-Converter

particle minecraft:dust 0.97 0.72 0.72 0.85 ^6.5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6.25 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6.25 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^6 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^6 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^6 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^6 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^5.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.75 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^5.75 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.75 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.75 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.75 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.75 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.75 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^5.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5.5 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5.5 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5.5 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^5.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5.25 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5.25 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5.25 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5.25 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^5 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^4.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.75 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.75 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.75 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.75 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.75 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^4.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.5 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.5 ^0 ^2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^4 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^4 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^4 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^4 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^4 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^3.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^3.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^3.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.75 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.75 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.75 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.75 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^3.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^3.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^3.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.5 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.5 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^3.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^3.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^3.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^3 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^3 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^3 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^3 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^3 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^2.75 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^2.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^2.5 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^2.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^2.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.5 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^2.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2.25 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^2 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^2 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^2 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^2 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^2 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^1.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^1.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^1.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^1.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^1.5 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^1.5 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^1.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^1.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^1.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^1.25 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^1.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^1.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^1.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^1.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^1 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^1 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^1 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^1 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^1 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^1 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^1 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^0.75 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^0.75 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^0.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^0.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^0.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^0.5 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^0.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^0.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^0.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^0.25 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^0.25 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^0.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^0.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^0.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^0.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^0 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^0 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^0 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^0 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^0 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^0 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^0 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^0 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-0.25 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-0.25 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-0.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-0.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-0.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-0.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-0.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-0.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-0.5 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-0.5 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-0.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-0.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-0.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-0.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-0.75 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-0.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-0.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-0.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-0.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-0.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-1 ^0 ^-2.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-1 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-1 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-1.25 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-1.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-1.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-1.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-1.25 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-1.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-1.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-1.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-1.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-1.75 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-1.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-1.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-1.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-1.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-1.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-2 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2.25 ^0 ^-3.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-2.25 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-2.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-2.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-2.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-2.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-2.5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2.75 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-2.75 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-2.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-2.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-2.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-2.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-2.75 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-2.75 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-3.25 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3.5 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3.5 ^0 ^-2 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3.5 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3.75 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-3.75 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-3.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-3.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-3.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-3.75 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-3.75 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-3.75 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4 ^0 ^-2.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-4 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-4 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-4 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4.25 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4.25 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-4.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-4.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4.5 ^0 ^-2.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4.5 ^0 ^-1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-4.5 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-4.5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-4.75 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-4.75 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.75 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-4.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.75 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-4.75 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.75 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-4.75 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-4.75 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.6 0 0 0.85 ^-4.75 ^0 ^2 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.25 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.25 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.25 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.25 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.25 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5.25 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5.25 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5.25 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.5 ^0 ^-0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.5 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.5 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.5 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5.5 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.5 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5.5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5.5 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5.5 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.75 ^0 ^-1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.75 ^0 ^-0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.75 ^0 ^-0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-5.75 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.75 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.75 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-5.75 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-5.75 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5.75 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.8 0.04 0.04 0.85 ^-5.75 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.67 0 0 0.85 ^-5.75 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6 ^0 ^-1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6 ^0 ^0.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-6 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-6 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-6 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-6 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 0.91 0.16 0.16 0.85 ^-6 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 0.97 0.72 0.72 0.85 ^-6 ^0 ^1.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6.25 ^0 ^-1 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6.25 ^0 ^0 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6.25 ^0 ^0.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-6.25 ^0 ^0.75 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-6.25 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.29 0.29 0.85 ^-6.25 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-6.25 ^0 ^1.5 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6.5 ^0 ^1 0 0 0 0 1 normal @a
particle minecraft:dust 1 0.84 0.84 0.85 ^-6.5 ^0 ^1.25 0 0 0 0 1 normal @a
particle minecraft:dust 1 1 1 0.85 ^-6.75 ^0 ^0.75 0 0 0 0 1 normal @a
