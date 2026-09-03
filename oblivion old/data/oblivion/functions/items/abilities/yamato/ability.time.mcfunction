scoreboard players add @s obl.yamato.time.ability 1
execute if score @s obl.yamato.time.ability matches 1..9 run tp @s ~ ~ ~ ~ 0
execute if score @s obl.yamato.time.ability matches 10..30 run tp @s ~ ~ ~ ~ ~2.75
execute if score @s obl.yamato.time.ability matches 1 run effect give @s resistance 4 3 true
execute if score @s obl.yamato.time.ability matches 1 run attribute @s minecraft:generic.knockback_resistance base set 10
execute if score @s obl.yamato.time.ability matches 1 run title @s times 0 46 10
execute if score @s obl.yamato.time.ability matches 1 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  3  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.time.ability matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9
execute if score @s obl.yamato.time.ability matches 10 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  2  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.time.ability matches 10 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s obl.yamato.time.ability matches 20 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  1  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.time.ability matches 20 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.1
execute if score @s obl.yamato.time.ability matches 30 run title @s subtitle [{"text":"! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< !","color":"#1c638e"}]
execute if score @s obl.yamato.time.ability matches 30 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.time.ability matches 34 run title @s subtitle [{"text":"! ! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< ! !","color":"#1c638e"}]
execute if score @s obl.yamato.time.ability matches 34 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.time.ability matches 38 run title @s subtitle [{"text":"! ! ! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< ! ! !","color":"#1c638e"}]
execute if score @s obl.yamato.time.ability matches 38 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.time.ability matches 42 run title @s subtitle [{"text":"ПОЗДНО!","color":"#D11212"}]
execute if score @s obl.yamato.time.ability matches 42 run tellraw @s ["",{"text":"Я м ","italic":true,"color":"#1CC6BB"},{"text":"а т ","italic":true,"color":"#31C8AF"},{"text":"о   ","italic":true,"color":"#43CABB"},{"text":"о т ","italic":true,"color":"#4FCEC2"},{"text":"к а ","italic":true,"color":"#60D3CB"},{"text":"т ы ","italic":true,"color":"#79DFD9"},{"text":"в а ","italic":true,"color":"#8EE9E0"},{"text":"е т ","italic":true,"color":"#92E8E2"},{"text":"с я ","italic":true,"color":"#A1EDE1"},{"text":"!","italic":true,"color":"#AFF2EA"},{"text":"   (1:30)","italic":true,"color":"#C6F8F3"}]
execute if score @s obl.yamato.time.ability matches 42.. run function oblivion:items/abilities/yamato/ability.fail