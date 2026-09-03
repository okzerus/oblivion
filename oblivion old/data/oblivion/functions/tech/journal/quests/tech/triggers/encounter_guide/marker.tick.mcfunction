scoreboard players remove @s obl.materializing 1
execute if score @s obl.materializing matches 249 run tp @s ~ ~3 ~
execute if score @s obl.materializing matches 249 as @p at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=obl.the_guide.marker,sort=nearest,limit=1] eyes

execute if predicate oblivion:chance/1.5 run function oblivion:tech/player/materializing/strike
particle minecraft:enchant ~ ~2 ~ 0.3 0.6 0.3 3 2
particle minecraft:end_rod ~ ~0.85 ~ 0.3 0.6 0.3 0 1
particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.1 1
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 0.25 2


execute if score @s obl.materializing matches 220 as @a[distance=..25] at @s run function oblivion:lines/the_guide/first_encounter/1
execute if score @s obl.materializing matches 120 as @a[distance=..25] run function oblivion:lines/the_guide/first_encounter/2

execute if score @s obl.materializing matches ..0 run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/guide.spawn