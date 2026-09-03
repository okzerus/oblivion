execute unless score devilalive oblivion matches 1 run scoreboard players add @s oblivion 1

execute if score @s oblivion matches 2..20 run particle enchant ~ ~.3 ~ 0.1 0.1 0.1 0 2 normal
execute if score @s oblivion matches 21..50 run particle enchant ~ ~.3 ~ 0.1 0.1 0.1 0 10 normal
execute if score @s oblivion matches 5 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 5 run tellraw @a[distance=..50] {"text":"Внимание! Вы пытаетесь призвать Дьявола!","color":"red"}
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
execute if score @s oblivion matches 17 run tag @s add particlebook
execute if score @s oblivion matches 17 run advancement grant @a[distance=..50] only oblivion:advancements/mobs/summondevil
execute if score @s oblivion matches 17 run data merge entity @s {Age:-32768s,PickupDelay:32767s,Invulnerable:1b}
execute if score @s oblivion matches 17 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 17 run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","color":"dark_red"},{"selector":"@p","color":"red"},{"text":" \u043f\u043e\u0434\u043f\u0438\u0441\u0430\u043b \u043d\u0435 \u0442\u043e\u0442 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0442...","color":"dark_red"}]
execute if score @s oblivion matches 17 run execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.1
execute if score @s oblivion matches 20 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 23 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 26 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 29 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 30 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 32 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 33 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 34 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 38 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 39 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 41 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 44 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 48 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 49 run function oblivion:tech/bloodmoonlightning2
execute if score @s oblivion matches 21..50 run particle flash ~ ~9 ~ 5.2 5.2 5.2 0 3 force @a

execute if score @s oblivion matches 50 run function oblivion:night/devilspawn