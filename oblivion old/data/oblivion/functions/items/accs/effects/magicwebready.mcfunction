tellraw @s {"text":"Магическая сеть готова!","color":"green"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
scoreboard players set @s web.used 0
scoreboard players set @s web.cooldown 0