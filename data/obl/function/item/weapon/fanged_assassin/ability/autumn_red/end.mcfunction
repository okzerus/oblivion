execute store result score @s obl.random run random value 1..3
title @s times 0 80 0
execute if score @s obl.random matches 1 run title @s actionbar ["",{text:"Хотя бы заставьте меня снять пальто.",color:"#fc951f"}]
execute if score @s obl.random matches 2 run title @s actionbar ["",{text:"К чему спешка? Дорога в загробный мир и так переполнена.",color:"#fc951f"}]
execute if score @s obl.random matches 3 run title @s actionbar ["",{text:"Splendida giornata oggi.",color:"#fc951f"}]

particle dust{color:[0.99,0.13,0.01],scale:2} ~ ~1 ~ 5 2 5 0 200 normal
playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 1 0.8

scoreboard players set @s obl.weapon.fanged_assassin.autumn_red.cd 1200
