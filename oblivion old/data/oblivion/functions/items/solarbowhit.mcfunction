execute at @e[nbt={HurtTime:10s}] run fill ~ ~ ~ ~ ~ ~ fire replace air
execute at @e[nbt={HurtTime:10s}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
advancement revoke @s only oblivion:items/solarbowhit