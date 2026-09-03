advancement revoke @s only oblivion:mobs/hungerheadhurt2
execute as @e[tag=obl.hungerhead2] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 2
execute as @e[tag=obl.hungerhead2] at @s run particle minecraft:enchant ~ ~1.7 ~ 0.5 0.5 0.5 0.01 100 force
execute as @e[tag=obl.hungerhead2] at @s run particle minecraft:block terracotta ~ ~1.7 ~ 0.5 0.5 0.5 0.01 100 force
execute as @e[tag=obl.hungerhead2] at @s run tp @s ~ -256 ~
execute as @e[tag=obl.hungerhead2] at @s run kill @s