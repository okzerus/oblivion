execute as @e[tag=obl.rightdevilcube] run function oblivion:tech/abilities/devilabilities/devilcubes/remove
tag @s add obl.rightdevilcube
tag @s remove obl.wrongdevilcube
playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1.5
data merge entity @s {Glowing:1b,CustomName:'[{"text":"АТАКУЙТЕ","color":"dark_red"}]',CustomNameVisible:1b}
execute at @s run particle minecraft:end_rod ~ ~0.3 ~ 0 0 0 0.3 10 force