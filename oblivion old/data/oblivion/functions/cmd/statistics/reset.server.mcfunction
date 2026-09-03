execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~ ~ 1 1
tellraw @a [{"text":"Статистика серверных рекордов была сброшена игроком ","color":"red"},{"selector":"@s","color":"gold"}]

data remove storage oblivion:server cursed_armor
scoreboard players set $nohit obl.second.sb_nh 0
scoreboard players set $nohit obl.minute.sb_nh 0
scoreboard players set $nohit obl.boss.cursed_armor.best 67100
scoreboard players set $server obl.second.sb 0
scoreboard players set $server obl.second.sb 0
scoreboard players set $server obl.boss.cursed_armor.best 67100