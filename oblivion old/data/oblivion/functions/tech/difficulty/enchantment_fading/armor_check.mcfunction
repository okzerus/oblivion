tag @s add obl.enchantment_fading.armor.any
execute if predicate oblivion:enchanted/armor/helmet run summon marker ~ ~ ~ {Tags:["obl.temp.armor_piece","obl.temp.helmet"]}
execute if predicate oblivion:enchanted/armor/chestplate run summon marker ~ ~ ~ {Tags:["obl.temp.armor_piece","obl.temp.chestplate"]}
execute if predicate oblivion:enchanted/armor/leggings run summon marker ~ ~ ~ {Tags:["obl.temp.armor_piece","obl.temp.leggings"]}
execute if predicate oblivion:enchanted/armor/boots run summon marker ~ ~ ~ {Tags:["obl.temp.armor_piece","obl.temp.boots"]}

tag @e[type=marker,tag=obl.temp.armor_piece,sort=random,limit=1] add obl.temp.selected

execute if entity @e[type=marker,tag=obl.temp.selected,tag=obl.temp.helmet] run tag @s add obl.enchantment_fading.armor.helmet
execute if entity @e[type=marker,tag=obl.temp.selected,tag=obl.temp.chestplate] run tag @s add obl.enchantment_fading.armor.chestplate
execute if entity @e[type=marker,tag=obl.temp.selected,tag=obl.temp.leggings] run tag @s add obl.enchantment_fading.armor.leggings
execute if entity @e[type=marker,tag=obl.temp.selected,tag=obl.temp.boots] run tag @s add obl.enchantment_fading.armor.boots
kill @e[type=marker,tag=obl.temp.armor_piece]