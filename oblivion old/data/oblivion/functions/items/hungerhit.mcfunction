scoreboard players add @s obl.hungercombo 1
scoreboard players set @s obl.hungertimer 0

execute if score @s obl.hungercombo matches 10..19 run function oblivion:items/hungersword/combo1effects
execute if score @s obl.hungercombo matches 10..19 run execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungersword/combo1damage

execute if score @s obl.hungercombo matches 20..29 run function oblivion:items/hungersword/combo2effects
execute if score @s obl.hungercombo matches 20..29 run execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungersword/combo2damage

execute if score @s obl.hungercombo matches 30..39 run function oblivion:items/hungersword/combo3effects
execute if score @s obl.hungercombo matches 30..39 run execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungersword/combo3damage

execute if score @s obl.hungercombo matches 40..49 run function oblivion:items/hungersword/combo4effects
execute if score @s obl.hungercombo matches 40..49 run execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungersword/combo4damage

execute if score @s obl.hungercombo matches 50 run advancement grant @s only oblivion:advancements/weapons/swords/hunger_sword_max
execute if score @s obl.hungercombo matches 50.. run function oblivion:items/hungersword/combo5effects
execute if score @s obl.hungercombo matches 50.. run execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungersword/combo5damage


execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5,tag=!mothron,tag=!amethystpixie,tag=!devilcube,type=!ender_dragon,type=!wither] at @s run function oblivion:items/hungerdamage
advancement revoke @s only oblivion:items/hungersword