execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=#oblivion:canteam,type=!#oblivion:zombies] at @s run team leave @s
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=#oblivion:canteam,type=!#oblivion:zombies] at @s run tag @s add obl.cantteam
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=#oblivion:zombies] at @s run tag @e[type=#oblivion:zombies,distance=..50] add obl.cantteam
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=#oblivion:zombies] at @s run team leave @e[type=#oblivion:zombies,distance=..50]
execute if entity @e[sort=nearest,limit=1,nbt={HurtTime:10s},type=#oblivion:canteam] run advancement grant @s only oblivion:advancements/accs/other/mobacc
advancement revoke @s only oblivion:tech/accs/mobacc