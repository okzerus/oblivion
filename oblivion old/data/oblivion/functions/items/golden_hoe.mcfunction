# Function (particles, effects, sounds)

execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run function oblivion:items/hoe/goldendamage

# Advancements

execute unless entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!obl.cantbleed,tag=!obl.witherinvul] run advancement grant @s only oblivion:advancements/weapons/hoes/bleeding
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] if score randomizer obl.rng matches 1..25 run advancement grant @s only oblivion:advancements/weapons/hoes/brokearmor
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},nbt={ArmorItems:[{id:"minecraft:diamond_boots"},{id:"minecraft:diamond_leggings"},{id:"minecraft:diamond_chestplate"},{id:"minecraft:diamond_helmet"}]},distance=..5] if score randomizer obl.rng matches 1..25 run advancement grant @s only oblivion:advancements/weapons/hoes/brokearmordiamond

# Remove advancement

advancement revoke @s only oblivion:items/golden_hoe