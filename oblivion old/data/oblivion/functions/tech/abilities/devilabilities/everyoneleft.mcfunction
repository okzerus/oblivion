tellraw @a {"text":"\u0412\u0441\u0435 \u0438\u0433\u0440\u043e\u043a\u0438 \u0443\u043c\u0435\u0440\u043b\u0438/\u043f\u043e\u043a\u0438\u043d\u0443\u043b\u0438 \u0431\u043e\u0439 \u0441 \u0414\u044c\u044f\u0432\u043e\u043b\u043e\u043c.","color":"dark_red"}
scoreboard players set devilalive oblivion 0

kill @e[tag=obl.devilstand]
kill @e[tag=obl.centralarrowstand]
kill @e[tag=obl.arrowstand]
kill @e[tag=obl.devilcubestand]

bossbar remove oblivion:devil
bossbar remove nethermothron

execute as @e[tag=devil] at @s run tp ~ -256 ~
tag @e[tag=devil] remove devil
execute as @e[tag=nethermothron] at @s run tp ~ -256 ~
execute as @e[tag=tinynethermothron] at @s run tp ~ -256 ~
execute as @e[name="Гигантский Дьявольский Куб"] at @s run tp ~ -256 ~
execute as @e[name="Дьявольский куб"] at @s run tp ~ -256 ~
execute as @e[tag=phase1] at @s run kill @s
execute as @e[tag=phase2] at @s run kill @s
execute as @e[tag=phase3] at @s run kill @s
execute as @e[tag=nethermothron] at @s run kill @s
execute as @e[tag=tinynethermothron] at @s run kill @s
execute as @e[name="Гигантский Дьявольский Куб"] at @s run kill @s
execute as @e[name="Дьявольский куб"] at @s run kill @s