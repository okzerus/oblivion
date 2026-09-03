tellraw @a {"text":"\u0412\u0441\u0435 \u0438\u0433\u0440\u043e\u043a\u0438 \u0443\u043c\u0435\u0440\u043b\u0438/\u043f\u043e\u043a\u0438\u043d\u0443\u043b\u0438 \u0431\u043e\u0439 \u0441 Аметистовой Пикси.","color":"dark_purple"}
scoreboard players set amethystpixiealive oblivion 0

kill @e[tag=obl.pixieclone]
kill @e[tag=obl.pixieminion]

bossbar remove oblivion:amethystpixie


execute as @e[tag=amethystpixie] at @s run tp ~ -10000 ~
tag @e[tag=amethystpixie] remove amethystpixie