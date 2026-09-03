tellraw @a {"text":"\u0412\u0441\u0435 \u0438\u0433\u0440\u043e\u043a\u0438 \u0443\u043c\u0435\u0440\u043b\u0438/\u043f\u043e\u043a\u0438\u043d\u0443\u043b\u0438 \u0431\u043e\u0439 \u0441 Голодом.","color":"gold"}
scoreboard players set hungeralive oblivion 0

kill @e[tag=obl.hungerstand]
kill @e[tag=obl.hungerstandline]
kill @e[tag=obl.hungerplayerstand]
execute as @e[tag=obl.gianthungerdecor] at @s run tp ~ -256 ~
kill @e[tag=obl.gianthungerdecor]
kill @e[tag=obl.hungerstandcenter]
kill @e[tag=obl.hungerhead]
kill @e[tag=obl.goodfood]
kill @e[tag=obl.cursedfood]

bossbar remove oblivion:hunger



execute as @e[tag=hunger] at @s run tp ~ -256 ~
tag @e[tag=hunger] remove hunger