effect give @e[nbt={HurtTime:10s}] minecraft:slowness 3 4
execute at @e[nbt={HurtTime:10s}] run playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 1 1.7
execute at @e[nbt={HurtTime:10s}] run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 50
execute at @e[nbt={HurtTime:10s}] run particle firework ~ ~1 ~ 0.3 0.6 0.3 0 10
advancement revoke @s only oblivion:items/ice_sword/level_4

advancement grant @s only oblivion:advancements/weapons/swords/ice_sword_hit