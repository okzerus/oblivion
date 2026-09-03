effect give @s regeneration 7 0
effect give @s absorption 20 0
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.nausea] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/nausea
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.darkness] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/darkness
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.blindness] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/blindness
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.hunger] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/hunger
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.levitation] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/levitation
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.mining_fatigue] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/mining_fatigue
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.poison] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/poison
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.wither] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/wither
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.slowness] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/slowness
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.unluck] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/unluck
execute if entity @s[tag=!obl.cursed,tag=obl.has_effect.weakness] if predicate oblivion:chance/25 run function oblivion:tech/effects/clear/weakness

advancement grant @s only oblivion:advancements/items/food/honeycomb_ingot
advancement revoke @s only oblivion:tech/consume/honeycomb_ingot