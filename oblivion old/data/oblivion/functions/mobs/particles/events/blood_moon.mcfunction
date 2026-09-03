execute if entity @s[tag=bloodmob,tag=!ashes,tag=!brain,tag=!death,tag=!bloodenergy,tag=!bloodfairy,tag=!psix,tag=!demonicmob] at @s run particle dust 1 0 0 1 ~ ~.5 ~ 0.3 1 0.3 0 1 normal
execute if entity @s[tag=demonicmob] at @s run particle flame ~ ~.5 ~ 0.3 1 0.3 0 3 normal
execute if entity @s[tag=death] at @s run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 2 normal
execute if entity @s[tag=brain] run particle minecraft:item redstone_block ~ ~1.7 ~ 0.03 0 0.03 0 1 normal
execute if entity @s[tag=bloodenergy] run particle dust 1 0 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1 normal
execute if entity @s[tag=bloodfairy] run particle dust 1 0 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1 normal
execute if entity @s[tag=bloodfairy] run particle block redstone_block ~ ~.4 ~ 0.01 0.01 0.01 0 1 normal
execute if entity @s[tag=demon] run particle flame ~ ~1 ~ 0.3 0.6 0.3 0 3 force
execute if entity @s[tag=demon] run particle lava ~ ~.1 ~ 0.3 0 0.3 0 1 force