teleport @s ~ ~5 ~
execute at @s run setblock ~ ~-1 ~ diamond_block
teleport @s ~ ~5 ~10
execute at @s run setblock ~ ~-1 ~ diamond_block
teleport @s ~ ~5 ~-10
execute at @s run setblock ~ ~-1 ~ diamond_block
teleport @s ~10 ~5 ~
execute at @s run setblock ~ ~-1 ~ diamond_block
teleport @s ~-10 ~5 ~
execute at @s run setblock ~ ~-1 ~ diamond_block
teleport @s ~ ~5 ~
execute at @s run particle minecraft:explosion ~ ~ ~
execute at @s run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 1 1 1