execute unless entity @s[tag=obl.on_ground] unless block ~ ~-1 ~ air if entity @s[nbt={OnGround:1b}] run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/guide.on_ground
execute unless entity @s[tag=obl.on_ground] run return 0
#################################################################################################################################################################

###   M A I N
scoreboard players add @s oblivion 1
execute anchored eyes run tp @s ~ ~ ~ facing entity @p eyes

###   L I N E S
execute if score @s oblivion matches 60 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/4
execute if score @s oblivion matches 140 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/5
execute if score @s oblivion matches 240 as @a[distance=..30] at @s run function oblivion:lines/the_guide/first_encounter/6
execute if score @s oblivion matches 320 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/7
execute if score @s oblivion matches 440 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/8
execute if score @s oblivion matches 560 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/9
execute if score @s oblivion matches 660 as @a[distance=..30] at @s run function oblivion:lines/the_guide/first_encounter/10
execute if score @s oblivion matches 740 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/11
execute if score @s oblivion matches 840 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/12
execute if score @s oblivion matches 900 run data merge entity @s {CustomName:'[{"text":"Гид","color":"#9fe791"}]'}
execute if score @s oblivion matches 900 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/13
execute if score @s oblivion matches 980 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/14
execute if score @s oblivion matches 1080 as @a[distance=..30] run function oblivion:lines/the_guide/first_encounter/15