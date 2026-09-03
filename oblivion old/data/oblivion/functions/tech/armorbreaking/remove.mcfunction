### ANNOUNCE
title @s times 0 20 10
title @s title ""
title @s subtitle {"text":"БРОНЯ ВОССТАНОВЛЕНА!","italic":true,"color":"#c68283"}
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 10 force
playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.6

### FUNCTION
## Get player's base armor attribute. Add whatever value was selected from the function that called armor breaking. Apply changes to armor base value.
execute store result score @s obl.armor_points.current run attribute @s minecraft:generic.armor base get
scoreboard players operation @s obl.armor_points.current += @s obl.armor_points.removed
execute if score @s obl.armor_points.current matches -22 run attribute @s minecraft:generic.armor base set -22
execute if score @s obl.armor_points.current matches -21 run attribute @s minecraft:generic.armor base set -21
execute if score @s obl.armor_points.current matches -20 run attribute @s minecraft:generic.armor base set -20
execute if score @s obl.armor_points.current matches -19 run attribute @s minecraft:generic.armor base set -19
execute if score @s obl.armor_points.current matches -18 run attribute @s minecraft:generic.armor base set -18
execute if score @s obl.armor_points.current matches -17 run attribute @s minecraft:generic.armor base set -17
execute if score @s obl.armor_points.current matches -16 run attribute @s minecraft:generic.armor base set -16
execute if score @s obl.armor_points.current matches -15 run attribute @s minecraft:generic.armor base set -15
execute if score @s obl.armor_points.current matches -14 run attribute @s minecraft:generic.armor base set -14
execute if score @s obl.armor_points.current matches -13 run attribute @s minecraft:generic.armor base set -13
execute if score @s obl.armor_points.current matches -12 run attribute @s minecraft:generic.armor base set -12
execute if score @s obl.armor_points.current matches -11 run attribute @s minecraft:generic.armor base set -11
execute if score @s obl.armor_points.current matches -10 run attribute @s minecraft:generic.armor base set -10
execute if score @s obl.armor_points.current matches -9 run attribute @s minecraft:generic.armor base set -9
execute if score @s obl.armor_points.current matches -8 run attribute @s minecraft:generic.armor base set -8
execute if score @s obl.armor_points.current matches -7 run attribute @s minecraft:generic.armor base set -7
execute if score @s obl.armor_points.current matches -6 run attribute @s minecraft:generic.armor base set -6
execute if score @s obl.armor_points.current matches -5 run attribute @s minecraft:generic.armor base set -5
execute if score @s obl.armor_points.current matches -4 run attribute @s minecraft:generic.armor base set -4
execute if score @s obl.armor_points.current matches -3 run attribute @s minecraft:generic.armor base set -3
execute if score @s obl.armor_points.current matches -2 run attribute @s minecraft:generic.armor base set -2
execute if score @s obl.armor_points.current matches -1 run attribute @s minecraft:generic.armor base set -1
execute if score @s obl.armor_points.current matches 0 run attribute @s minecraft:generic.armor base set 0
execute if score @s obl.armor_points.current matches 1 run attribute @s minecraft:generic.armor base set 1
execute if score @s obl.armor_points.current matches 2 run attribute @s minecraft:generic.armor base set 2
execute if score @s obl.armor_points.current matches 3 run attribute @s minecraft:generic.armor base set 3
execute if score @s obl.armor_points.current matches 4 run attribute @s minecraft:generic.armor base set 4
execute if score @s obl.armor_points.current matches 5 run attribute @s minecraft:generic.armor base set 5
execute if score @s obl.armor_points.current matches 6 run attribute @s minecraft:generic.armor base set 6
execute if score @s obl.armor_points.current matches 7 run attribute @s minecraft:generic.armor base set 7
execute if score @s obl.armor_points.current matches 8 run attribute @s minecraft:generic.armor base set 8
execute if score @s obl.armor_points.current matches 9 run attribute @s minecraft:generic.armor base set 9
execute if score @s obl.armor_points.current matches 10 run attribute @s minecraft:generic.armor base set 10
execute if score @s obl.armor_points.current matches 11 run attribute @s minecraft:generic.armor base set 11
execute if score @s obl.armor_points.current matches 12 run attribute @s minecraft:generic.armor base set 12
execute if score @s obl.armor_points.current matches 13 run attribute @s minecraft:generic.armor base set 13
execute if score @s obl.armor_points.current matches 14 run attribute @s minecraft:generic.armor base set 14
execute if score @s obl.armor_points.current matches 15 run attribute @s minecraft:generic.armor base set 15
execute if score @s obl.armor_points.current matches 16 run attribute @s minecraft:generic.armor base set 16
execute if score @s obl.armor_points.current matches 17 run attribute @s minecraft:generic.armor base set 17
execute if score @s obl.armor_points.current matches 18 run attribute @s minecraft:generic.armor base set 18
execute if score @s obl.armor_points.current matches 19 run attribute @s minecraft:generic.armor base set 19
execute if score @s obl.armor_points.current matches 20 run attribute @s minecraft:generic.armor base set 20
execute if score @s obl.armor_points.current matches 21 run attribute @s minecraft:generic.armor base set 21
execute if score @s obl.armor_points.current matches 22 run attribute @s minecraft:generic.armor base set 22

### CLEANUP
tag @s remove obl.brokenarmor
scoreboard players set @s obl.broken_armor 0