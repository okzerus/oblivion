execute if entity @s[advancements={oblivion:tech/enchantment_fading.tool=true},scores={obl.allowed_enchantments=..0}] if predicate oblivion:enchanted/tool.mainhand if predicate oblivion:chance/40 run tag @s add obl.enchantment_fading.tool.mainhand
execute if entity @s[advancements={oblivion:tech/enchantment_fading.tool=true},scores={obl.allowed_enchantments=..0}] if predicate oblivion:enchanted/tool.offhand if predicate oblivion:chance/40 run tag @s[tag=!obl.enchantment_fading.tool.mainhand] add obl.enchantment_fading.tool.offhand
execute if entity @s[advancements={oblivion:tech/enchantment_fading.hurt=true},scores={obl.allowed_enchantments=..0}] if predicate oblivion:enchanted/armor/any if predicate oblivion:chance/40 run function oblivion:tech/difficulty/enchantment_fading/armor_check

advancement revoke @s only oblivion:tech/enchantment_fading.tool
advancement revoke @s only oblivion:tech/enchantment_fading.hurt
execute if entity @s[tag=!obl.enchantment_fading.tool.mainhand,tag=!obl.enchantment_fading.tool.offhand,tag=!obl.enchantment_fading.armor.any] run return 0
function oblivion:tech/difficulty/enchantment_fading/process


tag @s remove obl.enchantment_fading.tool.mainhand
tag @s remove obl.enchantment_fading.tool.offhand
tag @s remove obl.enchantment_fading.armor.any
tag @s remove obl.enchantment_fading.armor.helmet
tag @s remove obl.enchantment_fading.armor.chestplate
tag @s remove obl.enchantment_fading.armor.leggings
tag @s remove obl.enchantment_fading.armor.boots