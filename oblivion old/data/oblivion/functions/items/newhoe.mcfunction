# Function (particles, effects, sounds)

execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run function oblivion:items/hoe/newhoedamage
execute at @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] run function oblivion:items/hoe/newhoedamageloot

# Advancements

execute unless entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!obl.cantbleed,tag=!obl.witherinvul] run advancement grant @s only oblivion:advancements/weapons/hoes/bleeding
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] if score randomizer obl.rng matches 1..15 run advancement grant @s only oblivion:advancements/weapons/hoes/brokearmor
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},nbt={ArmorItems:[{id:"minecraft:diamond_boots"},{id:"minecraft:diamond_leggings"},{id:"minecraft:diamond_chestplate"},{id:"minecraft:diamond_helmet"}]},distance=..5] if score randomizer obl.rng matches 1..15 run advancement grant @s only oblivion:advancements/weapons/hoes/brokearmordiamond
execute if entity @e[sort=nearest,limit=1,distance=..5] if score randomizer obl.rng matches 16..45 run advancement grant @s only oblivion:advancements/weapons/hoes/newhoeloot
execute if score @s obl.newhoe1 matches 1 if score @s obl.newhoe2 matches 1 if score @s obl.newhoe3 matches 1 if score @s obl.newhoe4 matches 1 if score @s obl.newhoe5 matches 1 if score @s obl.newhoe6 matches 1 if score @s obl.newhoe7 matches 1 if score @s obl.newhoe8 matches 1 if score @s obl.newhoe9 matches 1 if score @s obl.newhoe10 matches 1 if score @s obl.newhoe11 matches 1 if score @s obl.newhoe12 matches 1 if score @s obl.newhoe13 matches 1 if score @s obl.newhoe14 matches 1 if score @s obl.newhoe15 matches 1 if score @s obl.newhoe16 matches 1 if score @s obl.newhoe17 matches 1 if score @s obl.newhoe18 matches 1 if score @s obl.newhoe19 matches 1 if score @s obl.newhoe20 matches 1 if score @s obl.newhoe21 matches 1 if score @s obl.newhoe22 matches 1 if score @s obl.newhoe23 matches 1 if score @s obl.newhoe24 matches 1 run advancement grant @s only oblivion:advancements/weapons/hoes/newhoeeveryloot 

# Remove advancement

advancement revoke @s only oblivion:items/newhoe