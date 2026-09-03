execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~ ~ 1 1
tellraw @s [{"text":"Статистика ваших битв с боссами была сброшена.","color":"red"}]

scoreboard players set @s obl.boss.cursed_armor.best 67100
scoreboard players set @s obl.boss.cursed_armor.attempts 0
scoreboard players set @s obl.boss.cursed_armor.attempts_overall 0
scoreboard players set @s obl.boss.cursed_armor.win_count 0