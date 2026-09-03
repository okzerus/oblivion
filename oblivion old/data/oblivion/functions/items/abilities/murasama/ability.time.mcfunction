scoreboard players add @s obl.murasama.time.ability 1

execute if score @s obl.murasama.time.ability matches 1 run title @s times 0 36 10
execute if score @s obl.murasama.time.ability matches 1 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  3  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.murasama.time.ability matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9
execute if score @s obl.murasama.time.ability matches 10 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  2  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.murasama.time.ability matches 10 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s obl.murasama.time.ability matches 20 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  1  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.murasama.time.ability matches 20 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.1
execute if score @s obl.murasama.time.ability matches 30 run title @s subtitle [{"text":"! >","color":"#39cc2a"},{"text":"  ОГОНЬ  ","color":"#75ec52"},{"text":"< !","color":"#39cc2a"}]
execute if score @s obl.murasama.time.ability matches 30 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.murasama.time.ability matches 34 run title @s subtitle [{"text":"! ! >","color":"#39cc2a"},{"text":"  ОГОНЬ  ","color":"#75ec52"},{"text":"< ! !","color":"#39cc2a"}]
execute if score @s obl.murasama.time.ability matches 34 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.murasama.time.ability matches 38 run title @s subtitle [{"text":"! ! ! >","color":"#39cc2a"},{"text":"  ОГОНЬ  ","color":"#75ec52"},{"text":"< ! ! !","color":"#39cc2a"}]
execute if score @s obl.murasama.time.ability matches 38 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.murasama.time.ability matches 42 run title @s subtitle [{"text":"ПОЗДНО!","color":"#D11212"}]
execute if score @s obl.murasama.time.ability matches 42 run tellraw @s ["",{"text":"М у ","italic":true,"color":"#FF0003"},{"text":"р а ","italic":true,"color":"#FF0B0E"},{"text":"с а ","italic":true,"color":"#FF1719"},{"text":"м а   ","italic":true,"color":"#FF2A2C"},{"text":"о т к а ","italic":true,"color":"#FF3437"},{"text":"т ы в а ","italic":true,"color":"#FF4648"},{"text":"е т с я ","italic":true,"color":"#FF5456"},{"text":"!   (0:30)","italic":true,"color":"#FA5557"}]
execute if score @s obl.murasama.time.ability matches 42.. run function oblivion:items/abilities/murasama/ability.fail