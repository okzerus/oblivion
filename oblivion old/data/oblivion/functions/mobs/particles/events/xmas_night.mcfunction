execute if entity @s[tag=xmasmob,tag=!grinch,tag=!gift,tag=!xmassoul,tag=!xmasstorm] at @s run particle falling_dust snow_block ~ ~.5 ~ 0.3 1 0.3 0 1 normal
execute if entity @s[tag=xmassoul] at @s run particle item snow_block ~ ~1.7 ~ 0.03 0 0.03 0 2 normal
execute if entity @s[tag=xmassoul] at @s run particle falling_dust snow_block ~ ~1.7 ~ 0.07 0.07 0.07 0 2 normal
execute if entity @s[tag=grinch] at @s run particle dust 0 0.6 0 1 ~ ~.5 ~ 0.3 1 0.3 0 1 normal
execute if entity @s[tag=gift] at @s run particle falling_dust snow_block ~ ~ ~ 0.3 0.6 0.3 0 1 normal
execute if entity @s[tag=xmasstorm] at @s run particle falling_dust snow_block ~ ~1 ~ 0.3 1 0.3 0 4 normal
execute if entity @s[tag=xmasstorm] at @s run particle item snow_block ~ ~1 ~ 0.3 1 0.3 0 4 normal