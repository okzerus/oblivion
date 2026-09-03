execute unless score @s obl.empowering.cursed_armor matches 1.. run particle minecraft:dust 0.4 1 0.4 0.2 ~ ~.7 ~ 0.3 0.5 0.3 0 1
execute if score @s obl.empowering.cursed_armor matches 1..3 run particle minecraft:dust 0.4 1 0.4 0.5 ~ ~.7 ~ 0.3 0.5 0.3 0 2
execute if score @s obl.empowering.cursed_armor matches 4..7 run particle minecraft:dust 0.4 1 0.4 0.8 ~ ~.7 ~ 0.3 0.5 0.3 0 2
execute if score @s obl.empowering.cursed_armor matches 8.. run particle minecraft:dust 0.4 1 0.4 1.1 ~ ~.7 ~ 0.3 0.5 0.3 0 3
execute if score @s obl.empowering.cursed_armor matches 8.. run particle minecraft:electric_spark ~ ~.7 ~ 0.3 0.5 0.3 0.1 1

execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.nausea,tag=!obl.empowered.cursed_armor.nausea] run function oblivion:items/set_bonuses/cursed_armor/empower/nausea
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.blindness,tag=!obl.empowered.cursed_armor.blindness] run function oblivion:items/set_bonuses/cursed_armor/empower/blindness
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.darkness,tag=!obl.empowered.cursed_armor.darkness] run function oblivion:items/set_bonuses/cursed_armor/empower/darkness
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.slowness,tag=!obl.empowered.cursed_armor.slowness] run function oblivion:items/set_bonuses/cursed_armor/empower/slowness
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.weakness,tag=!obl.empowered.cursed_armor.weakness] run function oblivion:items/set_bonuses/cursed_armor/empower/weakness
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.mining_fatigue,tag=!obl.empowered.cursed_armor.mining_fatigue] run function oblivion:items/set_bonuses/cursed_armor/empower/mining_fatigue
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.unluck,tag=!obl.empowered.cursed_armor.unluck] run function oblivion:items/set_bonuses/cursed_armor/empower/unluck
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.poison,tag=!obl.empowered.cursed_armor.poison] run function oblivion:items/set_bonuses/cursed_armor/empower/poison
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.wither,tag=!obl.empowered.cursed_armor.wither] run function oblivion:items/set_bonuses/cursed_armor/empower/wither
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.levitation,tag=!obl.empowered.cursed_armor.levitation] run function oblivion:items/set_bonuses/cursed_armor/empower/levitation
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.hunger,tag=!obl.empowered.cursed_armor.hunger] run function oblivion:items/set_bonuses/cursed_armor/empower/hunger
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.stun,tag=!obl.empowered.cursed_armor.stun] run function oblivion:items/set_bonuses/cursed_armor/empower/stun
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.broken_armor,tag=!obl.empowered.cursed_armor.broken_armor] run function oblivion:items/set_bonuses/cursed_armor/empower/broken_armor
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.has_effect.curse,tag=!obl.empowered.cursed_armor.curse] run function oblivion:items/set_bonuses/cursed_armor/empower/curse
execute if predicate oblivion:items/full_set.cursed_armor if entity @s[tag=obl.enchanted,tag=obl.bad_enchantment,tag=!obl.empowered.cursed_armor.bad_enchantment] run function oblivion:items/set_bonuses/cursed_armor/empower/bad_enchantment

execute if entity @s[tag=!obl.has_effect.nausea,tag=obl.empowered.cursed_armor.nausea] run function oblivion:items/set_bonuses/cursed_armor/cleanup/nausea
execute if entity @s[tag=!obl.has_effect.blindness,tag=obl.empowered.cursed_armor.blindness] run function oblivion:items/set_bonuses/cursed_armor/cleanup/blindness
execute if entity @s[tag=!obl.has_effect.darkness,tag=obl.empowered.cursed_armor.darkness] run function oblivion:items/set_bonuses/cursed_armor/cleanup/darkness
execute if entity @s[tag=!obl.has_effect.slowness,tag=obl.empowered.cursed_armor.slowness] run function oblivion:items/set_bonuses/cursed_armor/cleanup/slowness
execute if entity @s[tag=!obl.has_effect.weakness,tag=obl.empowered.cursed_armor.weakness] run function oblivion:items/set_bonuses/cursed_armor/cleanup/weakness
execute if entity @s[tag=!obl.has_effect.mining_fatigue,tag=obl.empowered.cursed_armor.mining_fatigue] run function oblivion:items/set_bonuses/cursed_armor/cleanup/mining_fatigue
execute if entity @s[tag=!obl.has_effect.unluck,tag=obl.empowered.cursed_armor.unluck] run function oblivion:items/set_bonuses/cursed_armor/cleanup/unluck
execute if entity @s[tag=!obl.has_effect.poison,tag=obl.empowered.cursed_armor.poison] run function oblivion:items/set_bonuses/cursed_armor/cleanup/poison
execute if entity @s[tag=!obl.has_effect.wither,tag=obl.empowered.cursed_armor.wither] run function oblivion:items/set_bonuses/cursed_armor/cleanup/wither
execute if entity @s[tag=!obl.has_effect.levitation,tag=obl.empowered.cursed_armor.levitation] run function oblivion:items/set_bonuses/cursed_armor/cleanup/levitation
execute if entity @s[tag=!obl.has_effect.hunger,tag=obl.empowered.cursed_armor.hunger] run function oblivion:items/set_bonuses/cursed_armor/cleanup/hunger
execute if entity @s[tag=!obl.has_effect.stun,tag=obl.empowered.cursed_armor.stun] run function oblivion:items/set_bonuses/cursed_armor/cleanup/stun
execute if entity @s[tag=!obl.has_effect.broken_armor,tag=obl.empowered.cursed_armor.broken_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/broken_armor
execute if entity @s[tag=!obl.has_effect.curse,tag=obl.empowered.cursed_armor.curse] run function oblivion:items/set_bonuses/cursed_armor/cleanup/curse
execute if entity @s[tag=!obl.enchanted,tag=!obl.bad_enchantment,tag=obl.empowered.cursed_armor.bad_enchantment] run function oblivion:items/set_bonuses/cursed_armor/cleanup/bad_enchantment

execute if entity @s[tag=obl.empowered.cursed_armor.nausea,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/nausea
execute if entity @s[tag=obl.empowered.cursed_armor.blindness,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/blindness
execute if entity @s[tag=obl.empowered.cursed_armor.darkness,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/darkness
execute if entity @s[tag=obl.empowered.cursed_armor.slowness,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/slowness
execute if entity @s[tag=obl.empowered.cursed_armor.weakness,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/weakness
execute if entity @s[tag=obl.empowered.cursed_armor.mining_fatigue,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/mining_fatigue
execute if entity @s[tag=obl.empowered.cursed_armor.unluck,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/unluck
execute if entity @s[tag=obl.empowered.cursed_armor.poison,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/poison
execute if entity @s[tag=obl.empowered.cursed_armor.wither,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/wither
execute if entity @s[tag=obl.empowered.cursed_armor.levitation,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/levitation
execute if entity @s[tag=obl.empowered.cursed_armor.hunger,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/hunger
execute if entity @s[tag=obl.empowered.cursed_armor.stun,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/stun
execute if entity @s[tag=obl.empowered.cursed_armor.broken_armor,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/broken_armor
execute if entity @s[tag=obl.empowered.cursed_armor.curse,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/curse
execute if entity @s[tag=obl.enchanted,tag=obl.empowered.cursed_armor.bad_enchantment,predicate=!oblivion:items/full_set.cursed_armor] run function oblivion:items/set_bonuses/cursed_armor/cleanup/bad_enchantment

execute if entity @s[tag=!obl.bad_enchantment,tag=!obl.has_effect.nausea,tag=!obl.has_effect.blindness,tag=!obl.has_effect.darkness,tag=!obl.has_effect.slowness,tag=!obl.has_effect.weakness,tag=!obl.has_effect.mining_fatigue,tag=!obl.has_effect.unluck,tag=!obl.has_effect.poison,tag=!obl.has_effect.wither,tag=!obl.has_effect.levitation,tag=!obl.has_effect.hunger,tag=!obl.has_effect.stun,tag=!obl.has_effect.broken_armor,tag=!obl.has_effect.curse] run tag @s remove obl.empowered.cursed_armor