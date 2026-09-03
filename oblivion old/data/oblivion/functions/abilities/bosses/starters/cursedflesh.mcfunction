execute unless score hungeralive oblivion matches 1 run scoreboard players add @s oblivion 1

execute if score @s oblivion matches 2..17 run particle item rotten_flesh{CustomModelData:30000} ~ ~.3 ~ 0.1 0.1 0.1 0 10 normal
execute if score @s oblivion matches 2..17 run particle enchant ~ ~.3 ~ 0.1 0.1 0.1 0.05 10 normal
execute if score @s oblivion matches 5 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 5 run tellraw @a[distance=..50] {"text":"Внимание! Вы пытаетесь призвать Голод!","color":"gold"}
execute if score @s oblivion matches 7 run tellraw @a[distance=..50] {"text":"5","color":"gold"}
execute if score @s oblivion matches 7 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 9 run tellraw @a[distance=..50] {"text":"4","color":"gold"}
execute if score @s oblivion matches 9 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 11 run tellraw @a[distance=..50] {"text":"3","color":"red"}
execute if score @s oblivion matches 11 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 13 run tellraw @a[distance=..50] {"text":"2..","color":"red"}
execute if score @s oblivion matches 13 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.7
execute if score @s oblivion matches 15 run tellraw @a[distance=..50] {"text":"1...","color":"dark_red"}
execute if score @s oblivion matches 15 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.4
execute if score @s oblivion matches 17 run advancement grant @a[distance=..50] only oblivion:advancements/mobs/summonhunger
execute if score @s oblivion matches 17 run tellraw @a ["",{"text":"Игрок ","color":"gold"},{"selector":"@p","color":"yellow"},{"text":", кажется, проголодался!","color":"gold"}]
execute if score @s oblivion matches 17 run execute as @a at @s run playsound minecraft:entity.husk.ambient master @s ~ ~ ~ 1 0.1
execute if score @s oblivion matches 17 run function oblivion:mobs/bosses/hungerspawn