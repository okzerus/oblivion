# Randomizer

function oblivion:rng

execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound entity.spider.ambient hostile @a ~ ~ ~ 1 1.7
execute if score randomizer obl.rng matches 1..15 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run setblock ~ ~ ~ cobweb destroy
effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s}] slowness 10 0 false
advancement revoke @s only oblivion:tech/accs/slow