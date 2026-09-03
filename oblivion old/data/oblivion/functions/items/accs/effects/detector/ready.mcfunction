tellraw @s {"text":"Детектор существ готов!","color":"green"}
execute at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
scoreboard players set @s detector.cd 0
scoreboard players set @s detector.use 0