execute if score @s obl.yamato.time.ability matches ..29 run title @s subtitle [{"text":"НЕУДАЧА!","color":"#D11212"}]
execute if score @s obl.yamato.time.ability matches ..29 run tellraw @s ["",{"text":"Я м ","italic":true,"color":"#1CC6BB"},{"text":"а т ","italic":true,"color":"#31C8AF"},{"text":"о   ","italic":true,"color":"#43CABB"},{"text":"о т ","italic":true,"color":"#4FCEC2"},{"text":"к а ","italic":true,"color":"#60D3CB"},{"text":"т ы ","italic":true,"color":"#79DFD9"},{"text":"в а ","italic":true,"color":"#8EE9E0"},{"text":"е т ","italic":true,"color":"#92E8E2"},{"text":"с я ","italic":true,"color":"#A1EDE1"},{"text":"!","italic":true,"color":"#AFF2EA"},{"text":"   (1:30)","italic":true,"color":"#C6F8F3"}]

tag @s remove obl.yamato.preparing_ability
tag @s remove obl.yamato.performing_ability
scoreboard players set @s obl.yamato.time.ability 0
scoreboard players set @s obl.yamato.used.ability 1
scoreboard players set @s obl.yamato.cd.ability 1800
scoreboard players remove @s obl.yamato.style 50
playsound minecraft:entity.villager.no hostile @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1
effect clear @s darkness
effect clear @s resistance
attribute @s minecraft:generic.knockback_resistance base set 0