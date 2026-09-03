tellraw @s {"text":"Рог Демона готов!","color":"green"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
scoreboard players set @s demon.used 0
scoreboard players set @s demon.cooldown 0