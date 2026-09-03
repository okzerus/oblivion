scoreboard players set obl.everycount oblivion 0

execute at @s as @e[tag=obl.mob,distance=..80] run scoreboard players add obl.everycount oblivion 1

execute at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.1
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.1
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.2
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.3
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.4
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.7
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.9
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.1
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.4
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.6
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.7
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.8
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1.9
execute at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 2
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute at @s run particle minecraft:enchanted_hit ~ ~1.6 ~ 0 0 0 10 5000 normal @s
execute at @s run effect give @e[tag=obl.mob,distance=..80] glowing 5 0 true
scoreboard players set @s detector 1
scoreboard players set @s detector.use 1

tellraw @s ["",{"text":"Обнаружено мобов из Oblivion поблизости, в радиусе 80 блоков: ","color":"light_purple"},{"score":{"name":"obl.everycount","objective":"oblivion"},"color":"dark_purple"}]