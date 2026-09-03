execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run function oblivion:items/poopstickdamage
advancement revoke @s only oblivion:items/poopstick
advancement grant @s only oblivion:advancements/items/poophit