execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1.6
effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s}] poison 10 0 false
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=creeper] run advancement grant @s only oblivion:advancements/accs/other/reactor
data merge entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=creeper] {Fuse:0,ignited:1}
advancement revoke @s only oblivion:tech/accs/uran
advancement revoke @s only oblivion:tech/accs/uran2