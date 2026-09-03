scoreboard players add @s oblivion 1
particle flame ~ ~.3 ~ 0 0 0 0 2 normal

execute if score @s oblivion matches 1 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"Внимание! Вы пытаетесь призвать событие - Солнечное затмение.","color":"red"},{"text":"\n "}]
execute if score @s oblivion matches 1 run playsound minecraft:block.note_block.pling master @a[distance=..20] ~ ~ ~ 1 1
execute if score @s oblivion matches 4 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"Обратите внимание, что во время этого события, мобы появляются сразу у всех игроков 5-го и выше уровня сложности.","color":"gold"},{"text":"\n "}]
execute if score @s oblivion matches 4 run playsound minecraft:entity.chicken.lay_egg master @a[distance=..20] ~ ~ ~ 1 1
execute if score @s oblivion matches 7 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"Ваш ник будет показан всему серверу, поэтому спросите прежде, готовы ли все игроки.","color":"gold"},{"text":"\n "}]
execute if score @s oblivion matches 7 run playsound minecraft:entity.chicken.lay_egg master @a[distance=..20] ~ ~ ~ 1 1

execute if score @s oblivion matches 10 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"3","color":"gold"},{"text":"\n "}]
execute if score @s oblivion matches 10 run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 1 1
execute if score @s oblivion matches 13 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"2..","color":"red"},{"text":"\n "}]
execute if score @s oblivion matches 13 run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 0.75 1
execute if score @s oblivion matches 17 run tellraw @a[distance=..20] ["",{"text":"\n"},{"text":"1...","color":"dark_red"},{"text":"\n "}]
execute if score @s oblivion matches 17 run playsound minecraft:block.note_block.pling master @a[distance=..10] ~ ~ ~ 0.5 1

execute if score @s oblivion matches 19 run function oblivion:events/start_solar_eclipse