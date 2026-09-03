execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~ ~ 1 1
tellraw @a [{"text":"Статистика рекордов всех (онлайн) игроков была сброшена.","color":"red"}]

scoreboard players set @a obl.boss.cursed_armor.best 67100
scoreboard players set @a obl.boss.cursed_armor.attempts 0
scoreboard players set @a obl.boss.cursed_armor.attempts_overall 0
scoreboard players set @s obl.boss.cursed_armor.win_count 0