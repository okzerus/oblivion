## FUCKING HATE THAT FUCKING LEASH NBT FUCKING   D  I  E

execute unless entity @s[tag=obl.leash_removal] run scoreboard players set @s obl.leash_removal 3
tag @s add obl.leash_removal

execute if score @s obl.leash_removal matches 3 run summon marker ~ ~ ~ {Tags:[obl.leash_removal]}
execute if score @s obl.leash_removal matches 3 run data modify entity @s Leash.UUID set from entity @e[type=marker,tag=obl.leash_removal,limit=1,sort=nearest] UUID
execute if score @s obl.leash_removal matches 2 run kill @e[type=marker,tag=obl.leash_removal]
execute if score @s obl.leash_removal matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},distance=..5]
execute if score @s obl.leash_removal matches 0 run tag @s remove obl.leash_removal