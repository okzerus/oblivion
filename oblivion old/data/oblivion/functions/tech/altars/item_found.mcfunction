###   A D D   I T E M
tp @s @e[type=marker,tag=obl.altar,sort=nearest,limit=1]
tag @s add obl.altar.item
tag @e[type=marker,tag=obl.altar] add obl.altar.has_items
data merge entity @s {Motion:[0.0d,0.0d,0.0d],NoGravity:1b}
particle minecraft:end_rod ~ ~.3 ~ 0 0 0 0 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.5 0.7

###   T A G S
## IF ARMOR
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:golden_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run tag @s add obl.item.armor.helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run tag @s add obl.item.armor.chestplate
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:golden_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run tag @s add obl.item.armor.leggings
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] run tag @s add obl.item.armor.boots
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run tag @s add obl.item.armor.boots
execute if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run tag @s add obl.item.armor.boots
execute if entity @s[nbt={Item:{id:"minecraft:golden_boots"}}] run tag @s add obl.item.armor.boots
execute if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run tag @s add obl.item.armor.boots
execute if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run tag @s add obl.item.armor.boots
## AVAILABLE ITEMS
execute if entity @s[nbt={Item:{tag:{obl.unusualifier:1b}}}] run tag @s add obl.item.unusualifier
execute if entity @s[nbt={Item:{tag:{obl.helmet:1b}}}] run tag @s add obl.item.unusualifier.helmet
execute if entity @s[nbt={Item:{tag:{obl.chestplate:1b}}}] run tag @s add obl.item.unusualifier.chestplate
execute if entity @s[nbt={Item:{tag:{obl.leggings:1b}}}] run tag @s add obl.item.unusualifier.leggings
execute if entity @s[nbt={Item:{tag:{obl.boots:1b}}}] run tag @s add obl.item.unusualifier.boots
execute if entity @s[nbt={Item:{tag:{obl.broken_glowing_receiver:1b}}}] run tag @s add obl.item.broken_glowing_receiver
execute if entity @s[nbt={Item:{tag:{obl.redstone.glowing_receiver:1b}}}] run tag @s add obl.item.glowing_receiver
execute if entity @s[nbt={Item:{tag:{obl.summoner_item:1b,obl.activated:0b}}}] run tag @s add obl.item.summoner
execute if entity @s[nbt={Item:{id:"minecraft:netherite_ingot"}}] run tag @s add obl.item.netherite
execute if entity @s[nbt={Item:{id:"minecraft:paper"}}] run tag @s add obl.item.paper
execute if entity @s[tag=obl.item.armor.helmet] run tag @s add obl.item.armor
execute if entity @s[tag=obl.item.armor.chestplate] run tag @s add obl.item.armor
execute if entity @s[tag=obl.item.armor.leggings] run tag @s add obl.item.armor
execute if entity @s[tag=obl.item.armor.boots] run tag @s add obl.item.armor
execute if entity @s[tag=obl.item.armor,nbt={Item:{tag:{obl.unusual:1b}}}] run tag @s add obl.item.armor.unusual
execute if entity @s[tag=obl.item.armor.unusual] store result score @s obl.unusual.id run data get entity @s Item.tag.'obl.unusual.id' 1
execute if entity @s[tag=obl.item.unusualifier] store result score @s obl.unusual.id run data get entity @s Item.tag.'obl.unusual.id' 1
execute if entity @s[tag=obl.item.broken_glowing_receiver] run tag @s add obl.one_item_recipe
execute if entity @s[tag=obl.item.summoner] run tag @s add obl.one_item_recipe
## ADD UNUSUAL LORE
execute if entity @s[tag=obl.item.armor,tag=!obl.item.armor.unusual] unless entity @s[nbt={Item:{tag:{obl.unusual_lore:1b}}}] run function oblivion:tech/altars/recipes/unusual.default_lore
## INVALID RECIPE ANNOUNCEMENT
execute unless entity @s[tag=obl.one_item_recipe] at @e[type=marker,tag=obl.altar] positioned ~ ~2 ~ unless entity @e[type=armor_stand,tag=obl.altar.invalid_recipe_announcement,distance=...5] run summon armor_stand ~ ~ ~ {Tags:["obl.altar.invalid_recipe_announcement"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Silent:1b,CustomName:'[{"text":"Неизвестный рецепт","color":"#652e78"}]',CustomNameVisible:1b}