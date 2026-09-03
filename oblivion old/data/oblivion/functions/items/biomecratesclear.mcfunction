particle angry_villager ~ ~ ~ 0.3 0.6 0.3 0 10
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 5 0.5
tellraw @a[distance=..50] {"text":"Подобранный биомный ящик был удалён, поскольку вы не достигли требуемого уровня! (4)","italic":true,"color":"red"}
clear @s chest{obl.difficulty:4b}