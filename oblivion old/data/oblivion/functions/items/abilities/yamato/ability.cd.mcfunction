execute unless score @s obl.yamato.cd.ability matches 1.. run scoreboard players set @s obl.yamato.used.ability 1
execute unless score @s obl.yamato.cd.ability matches 1.. run tellraw @s ["",{"text":"Я м ","italic":true,"color":"#1CC6BB"},{"text":"а т ","italic":true,"color":"#31C8AF"},{"text":"о   ","italic":true,"color":"#43CABB"},{"text":"о т ","italic":true,"color":"#4FCEC2"},{"text":"к а ","italic":true,"color":"#60D3CB"},{"text":"т ы ","italic":true,"color":"#79DFD9"},{"text":"в а ","italic":true,"color":"#8EE9E0"},{"text":"е т ","italic":true,"color":"#92E8E2"},{"text":"с я ","italic":true,"color":"#A1EDE1"},{"text":"!","italic":true,"color":"#AFF2EA"},{"text":"   (3:00)","italic":true,"color":"#C6F8F3"}]

scoreboard players add @s obl.yamato.cd.ability 1

execute if score @s obl.yamato.cd.ability matches 3600.. run function oblivion:items/abilities/yamato/ability.ready