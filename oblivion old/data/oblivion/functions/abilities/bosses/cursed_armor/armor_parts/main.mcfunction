scoreboard players add @s abilities 1

execute if entity @s[tag=obl.cursed_helmet,tag=!obl.phase.3] if score @s abilities matches 350 run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_helmet
execute if entity @s[tag=obl.cursed_chestplate,tag=!obl.phase.3] if score @s abilities matches 350 run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_chestplate
execute if entity @s[tag=obl.cursed_leggings,tag=!obl.phase.3] if score @s abilities matches 350 run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_leggings
execute if entity @s[tag=obl.cursed_boots,tag=!obl.phase.3] if score @s abilities matches 350 run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_boots