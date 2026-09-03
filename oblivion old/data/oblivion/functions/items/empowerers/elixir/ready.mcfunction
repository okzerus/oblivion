tellraw @s {"text":"[Загадочный эликсир - Усиление заряжено!]","color":"light_purple"}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
scoreboard players set @s obl.used.emp.elixir 0
scoreboard players set @s obl.process.emp.elixir 0
scoreboard players set @s obl.cd.emp.elixir 0