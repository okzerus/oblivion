###   I N I T I A L I Z E
execute unless entity @s[tag=obl.altar.modified] run function oblivion:tech/altars/modify



###   A L T A R   D E S T R U C T I O N
execute unless block ~ ~-1 ~ minecraft:reinforced_deepslate run function oblivion:tech/altars/destroy



###   A L T A R   V I S U A L S
## ROTATION
execute if score @s obl.altar.level matches 1 run tp @s ~ ~ ~ ~-1 ~
execute if score @s obl.altar.level matches 2 run tp @s ~ ~ ~ ~-1.5 ~
execute if score @s obl.altar.level matches 3 run tp @s ~ ~ ~ ~-2 ~
execute if score @s obl.altar.level matches 3 as @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~1 ~
## PARTICLES
execute if entity @s[tag=!obl.altar.working] run particle minecraft:enchant ~ ~.5 ~ 2 2 2 0 1
execute if entity @s[tag=obl.altar.working] run particle minecraft:enchant ~ ~.5 ~ 0.5 0.5 0.5 5 2
# Altar lvl. 1
execute if score @s obl.altar.level matches 1.. positioned ~ ~.2 ~ run particle minecraft:end_rod ^ ^ ^1 0 0 0 0 1
execute if score @s obl.altar.level matches 1.. positioned ~ ~.2 ~ run particle minecraft:end_rod ^ ^ ^-1 0 0 0 0 1
# Altar lvl. 2
execute if score @s obl.altar.level matches 2.. positioned ~ ~.2 ~ run particle minecraft:end_rod ^1 ^ ^ 0 0 0 0 1
execute if score @s obl.altar.level matches 2.. positioned ~ ~.2 ~ run particle minecraft:end_rod ^-1 ^ ^ 0 0 0 0 1
# Altar lvl. 3
execute if score @s obl.altar.level matches 3.. as @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run particle minecraft:end_rod ^ ^ ^4 0 0 0 0 1
execute if score @s obl.altar.level matches 3.. as @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run particle minecraft:end_rod ^ ^ ^-4 0 0 0 0 1
execute if score @s obl.altar.level matches 3.. as @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run particle minecraft:end_rod ^4 ^ ^ 0 0 0 0 1
execute if score @s obl.altar.level matches 3.. as @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest] at @s positioned ~ ~2 ~ run particle minecraft:end_rod ^-4 ^ ^ 0 0 0 0 1
## AMBIENT SOUND
function oblivion:tech/altars/ambient/ambient_near
function oblivion:tech/altars/ambient/ambient_far



###   F U N C T I O N
## ADD ITEM
execute if entity @s[tag=!obl.altar.preparing,tag=!obl.altar.working] as @e[type=item,distance=.1..1.5,tag=!obl.altar.item,tag=!obl.ignore_altar] at @s run function oblivion:tech/altars/item_found
## NO ITEMS
execute if entity @s[tag=obl.altar.has_items,tag=!obl.altar.preparing,tag=!obl.altar.working] unless entity @e[type=item,distance=..1.5,tag=obl.altar.item] run function oblivion:tech/altars/no_items
## CHECK RECIPE
execute if entity @s[tag=!obl.altar.preparing,tag=!obl.altar.working] as @e[type=item,distance=...3,tag=obl.altar.item,limit=1,sort=random] at @s run function oblivion:tech/altars/check_recipe
## RITUAL PREPARATION TIMER
execute if entity @s[tag=obl.altar.preparing] run function oblivion:tech/altars/rituals/preparing
## RITUAL WORKING BACKGROUND TIMER
execute if entity @s[tag=obl.altar.working] run function oblivion:tech/altars/rituals/working.background
## RITUAL WORKING TIMER
execute if entity @s[tag=obl.altar.working] unless entity @e[type=zombie,tag=obl.oblivionspirit,distance=..20] run scoreboard players add @s obl.altar.progress 1
execute if entity @s[tag=obl.altar.working] unless entity @e[type=zombie,tag=obl.oblivionspirit,distance=..20] run function oblivion:tech/altars/rituals/working

execute unless entity @s[tag=obl.altar.disabled] if entity @e[type=zombie,tag=obl.oblivionspirit,distance=..20] run particle dust 0.8 0 0 0.8 ~ ~1.35 ~ 0.1 0.1 0.1 0 10 force
execute unless entity @s[tag=obl.altar.disabled] anchored eyes positioned ~ ~1.5 ~ facing entity @e[type=zombie,tag=obl.oblivionspirit,distance=..20] eyes run function oblivion:tech/raycast/facing.oblivion_spirit

###   R I T U A L S
## PLAYER ENCHANTING
execute if entity @s[tag=!obl.altar.preparing,tag=!obl.altar.working] unless entity @e[type=item,distance=..1.5,tag=obl.altar.item] if entity @a[distance=...5,tag=!obl.enchanted] run function oblivion:tech/altars/rituals/player_enchantment/preparation
title @a[tag=obl.player_enchanting.preparing,distance=...5] actionbar {"text":"Вы уверены, что хотите зачаровать себя?","italic":true,"color":"#652E78"}
