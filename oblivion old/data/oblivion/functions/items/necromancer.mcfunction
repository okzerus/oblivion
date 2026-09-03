execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s run function oblivion:items/hoe/necromancerdamage

execute if score @s obl.necrocount matches 101 run advancement grant @s only oblivion:advancements/weapons/hoes/necromancer_hoe_army
advancement revoke @s only oblivion:items/necromancer