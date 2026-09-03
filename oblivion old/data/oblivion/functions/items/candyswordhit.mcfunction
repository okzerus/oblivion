execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0.8
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run effect give @s saturation 1 1 true
advancement revoke @s only oblivion:items/candyswordhit