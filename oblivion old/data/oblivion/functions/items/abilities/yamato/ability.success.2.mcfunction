# AOE
tag @e[type=#oblivion:aoe,distance=..16] add obl.damaged_area
tag @s remove obl.damaged_area

# Blood particles
execute at @e[type=#oblivion:canbleedparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 50 force
execute at @e[type=#oblivion:canbleedgreenparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block green_wool ~ ~.5 ~ 0.2 0.2 0.2 0 50 force
execute at @e[type=#oblivion:canbleedpurpleparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block purple_wool ~ ~1.5 ~ 0.2 0.4 0.2 0 50 force
execute at @e[type=#oblivion:canbleedparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0.7 0 0 2 ~ ~.2 ~ 0.3 0.6 0.3 0 50 force
execute at @e[type=#oblivion:canbleedgreenparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0 0.7 0 2 ~ ~.2 ~ 0.2 0.6 0.2 0 50 force
execute at @e[type=#oblivion:canbleedpurpleparticle,tag=obl.damaged_area,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle dust 0.7 0 0.7 2 ~ ~.9 ~ 0.2 0.4 0.2 0 50 force

# Damage
execute as @e[type=marker,tag=obl.yamato.cut,limit=16,sort=nearest] at @s anchored eyes positioned ^ ^ ^-5 run function oblivion:tech/raycast/yamato_ability.end
tag @s add obl.temp.owner
execute as @e[type=#oblivion:aoe,type=!player,tag=obl.damaged_area] run damage @s 450 trident by @p[tag=obl.temp.owner] from @p[tag=obl.temp.owner]
execute as @e[type=player,tag=obl.damaged_area] run damage @s 125 trident by @p[tag=obl.temp.owner] from @p[tag=obl.temp.owner]

# Cleanup
particle flash
tag @s add obl.yamato.post_ability
playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
tag @s remove obl.yamato.performing_ability
tag @s remove obl.yamato.preparing_ability
scoreboard players set @s obl.yamato.time.ability 0
scoreboard players set @s obl.yamato.cutting.ability 0
scoreboard players remove @s obl.yamato.style 100
effect clear @s darkness
effect clear @s resistance
attribute @s minecraft:generic.knockback_resistance base set 0
tag @s remove obl.temp.owner
tag @e[type=#oblivion:aoe,tag=obl.damaged_area] remove obl.damaged_area
function oblivion:items/abilities/yamato/ability.cd
playsound minecraft:item.trident.thunder hostile @a ~4 ~2 ~-4 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~-4 ~2 ~4 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~-4 ~2 ~-4 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~4 ~2 ~4 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~4 ~2 ~ 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~-4 ~2 ~ 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~ ~2 ~-4 0.5 1.3
playsound minecraft:item.trident.thunder hostile @a ~ ~2 ~4 0.5 1.3
playsound minecraft:block.glass.break hostile @a ~4 ~2 ~-4 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~-4 ~2 ~4 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~-4 ~2 ~-4 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~4 ~2 ~4 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~4 ~2 ~ 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~-4 ~2 ~ 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~ ~2 ~-4 0.7 0.75
playsound minecraft:block.glass.break hostile @a ~ ~2 ~4 0.7 0.75