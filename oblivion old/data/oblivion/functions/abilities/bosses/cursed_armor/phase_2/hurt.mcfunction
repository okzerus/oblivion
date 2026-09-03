# Randomizer

function oblivion:rng

playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.1
particle crit ~ ~1 ~ 0.3 0.8 0.3 0 50 force

execute if score randomizer obl.rng matches 1..8 unless entity @e[tag=obl.cursed_helmet] run function oblivion:abilities/bosses/cursed_armor/armor_parts/eject_helmet
execute if score randomizer obl.rng matches 9..16 unless entity @e[tag=obl.cursed_chestplate] run function oblivion:abilities/bosses/cursed_armor/armor_parts/eject_chestplate
execute if score randomizer obl.rng matches 17..24 unless entity @e[tag=obl.cursed_leggings] run function oblivion:abilities/bosses/cursed_armor/armor_parts/eject_leggings
execute if score randomizer obl.rng matches 25..32 unless entity @e[tag=obl.cursed_boots] run function oblivion:abilities/bosses/cursed_armor/armor_parts/eject_boots
