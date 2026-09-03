## RECIPE 1: UNUSUAL ADD
execute if entity @s[tag=obl.item.unusualifier.helmet] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.armor,tag=obl.item.armor.helmet,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.unusual_add
execute if entity @s[tag=obl.item.unusualifier.chestplate] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.armor,tag=obl.item.armor.chestplate,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.unusual_add
execute if entity @s[tag=obl.item.unusualifier.leggings] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.armor,tag=obl.item.armor.leggings,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.unusual_add
execute if entity @s[tag=obl.item.unusualifier.boots] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.armor,tag=obl.item.armor.boots,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.unusual_add
## RECIPE 2: UNUSUAL REMOVE
execute if entity @s[tag=obl.item.armor.unusual] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.paper,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.unusual_remove
## RECIPE 3: SUMMONER CHARGING
execute if entity @s[tag=obl.item.summoner] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.summoner_item
## RECIPE 4: GLOWING RECEIVER CHARGING
execute if entity @s[tag=obl.item.broken_glowing_receiver] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.glowing_receiver_mk1
## RECIPE 5: GLOWING RECEIVER UPGRADING
execute if entity @s[tag=obl.item.glowing_receiver] if entity @e[type=item,tag=obl.altar.item,tag=obl.item.netherite,distance=...3] as @e[type=marker,sort=nearest,limit=1,tag=obl.altar] at @s run function oblivion:tech/altars/recipes/crafting.glowing_receiver_mk2