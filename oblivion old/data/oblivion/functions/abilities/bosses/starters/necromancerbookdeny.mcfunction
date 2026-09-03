execute if score @s oblivion matches ..2 run scoreboard players add @s oblivion 1

execute if score @s oblivion matches 2 run particle angry_villager ~ ~ ~ 0.3 0 0.3 0 10
execute if score @s oblivion matches 2 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.5
execute if score @s oblivion matches 2 run tellraw @a[distance=..50] {"text":"Не удалось призвать Дьявола, поскольку вы не достигли нужного уровня сложности (8) / кровавая луна не активна / босс уже призван в другом месте / вы пытаетесь призвать ещё одного босса!","italic":true,"color":"red"}