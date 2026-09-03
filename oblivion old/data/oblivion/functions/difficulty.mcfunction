schedule function oblivion:difficulty 80t

execute as @a[scores={obl.difficulty=0}] at @s run function oblivion:tech/difficulty/level0
execute as @a[scores={obl.difficulty=1}] at @s run function oblivion:tech/difficulty/level1
execute as @a[scores={obl.difficulty=2}] at @s run function oblivion:tech/difficulty/level2
execute as @a[scores={obl.difficulty=3}] at @s run function oblivion:tech/difficulty/level3
execute as @a[scores={obl.difficulty=4}] at @s run function oblivion:tech/difficulty/level4
execute as @a[scores={obl.difficulty=5}] at @s run function oblivion:tech/difficulty/level5
execute as @a[scores={obl.difficulty=6}] at @s run function oblivion:tech/difficulty/level6
execute as @a[scores={obl.difficulty=7}] at @s run function oblivion:tech/difficulty/level7
execute as @a[scores={obl.difficulty=8}] at @s run function oblivion:tech/difficulty/level8
execute as @a[scores={obl.difficulty=9}] at @s run function oblivion:tech/difficulty/level9
execute as @a[scores={obl.difficulty=10}] at @s run function oblivion:tech/difficulty/level10

execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:black_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:blue_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:brown_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:cyan_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:gray_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:green_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:light_blue_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:light_gray_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:lime_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:magenta_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:orange_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:pink_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:purple_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:red_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:white_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker
execute as @a[scores={obl.difficulty=..5},nbt={Inventory:[{id:"minecraft:yellow_shulker_box"}]}] at @s run function oblivion:tech/difficulty/debuffsshulker


execute as @a[scores={obl.difficulty=0..1}] at @s run function oblivion:tech/difficulty/checkfordiamond
execute as @a[scores={obl.difficulty=0..2}] at @s run function oblivion:tech/difficulty/nethercheck
execute as @a[scores={obl.difficulty=0..3}] at @s run function oblivion:tech/difficulty/checkfornetherite