particle angry_villager ~ ~ ~ 0.3 0 0.3 0 10
playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.5
tellraw @a[distance=..50] {"text":"Выловленный биомный ящик был удалён, поскольку вы не достигли требуемого уровня (4) / рядом с вами игрок ниже требуемого уровня!","italic":true,"color":"red"}
kill @s