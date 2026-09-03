effect give @e[nbt={HurtTime:10s}] minecraft:slowness 3 1
execute at @e[nbt={HurtTime:10s}] run playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 1.7
execute at @e[nbt={HurtTime:10s}] run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 20
advancement revoke @s only oblivion:items/ice_sword/level_1
