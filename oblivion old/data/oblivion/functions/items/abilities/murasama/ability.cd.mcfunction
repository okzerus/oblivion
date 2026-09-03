execute unless score @s obl.murasama.cd.ability matches 1.. run scoreboard players set @s obl.murasama.used.ability 1
execute unless score @s obl.murasama.cd.ability matches 1.. run tellraw @s ["",{"text":"М у ","italic":true,"color":"#FF0003"},{"text":"р а ","italic":true,"color":"#FF0B0E"},{"text":"с а ","italic":true,"color":"#FF1719"},{"text":"м а   ","italic":true,"color":"#FF2A2C"},{"text":"о т к а ","italic":true,"color":"#FF3437"},{"text":"т ы в а ","italic":true,"color":"#FF4648"},{"text":"е т с я ","italic":true,"color":"#FF5456"},{"text":"!   (1:30)","italic":true,"color":"#FA5557"}]

scoreboard players add @s obl.murasama.cd.ability 1

execute if score @s obl.murasama.cd.ability matches 1800.. run function oblivion:items/abilities/murasama/ability.ready