execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.7
effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s}] wither 10 0 false
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=wither] run advancement grant @s only oblivion:advancements/accs/other/wither
advancement revoke @s only oblivion:tech/accs/wither
advancement revoke @s only oblivion:tech/accs/wither2