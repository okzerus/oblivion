execute if entity @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run tag @s add obl.item.lava_bucket
execute if entity @s[nbt={Item:{id:"minecraft:water_bucket"}}] run tag @s add obl.item.water_bucket
execute if entity @s[tag=obl.item.lava_bucket] run tag @s add obl.parry_strength.3
execute if entity @s[tag=obl.item.water_bucket] run tag @s add obl.parry_strength.3
execute if entity @s[tag=obl.item.lava_bucket] run tag @s remove obl.parry_strength.2
execute if entity @s[tag=obl.item.water_bucket] run tag @s remove obl.parry_strength.2
data merge entity @s {PickupDelay:10s}