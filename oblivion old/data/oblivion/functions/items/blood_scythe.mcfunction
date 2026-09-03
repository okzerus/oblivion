# Function (particles, effects, sounds)

execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run function oblivion:items/hoe/blooddamage

# Heal player

execute if score randomizer obl.rng matches 1..8 run effect give @s regeneration 10 0 false
execute if score randomizer obl.rng matches 1..8 run effect give @s instant_health 1 0 false
execute if score randomizer obl.rng matches 1..8 as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run particle minecraft:soul ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 1..8 run particle minecraft:heart ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.1

# Advancements

execute unless entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!obl.cantbleed,tag=!obl.witherinvul] run advancement grant @s only oblivion:advancements/weapons/hoes/bleeding
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] if score randomizer obl.rng matches 1..8 run advancement grant @s only oblivion:advancements/weapons/hoes/bloodhoeheal
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] if score randomizer obl.rng matches 9..23 run advancement grant @s only oblivion:advancements/weapons/hoes/bloodhoemax

# Remove advancement

advancement revoke @s only oblivion:items/blood_scythe