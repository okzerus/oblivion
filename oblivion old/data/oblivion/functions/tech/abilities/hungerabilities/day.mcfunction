tellraw @a[tag=inbattlewithhunger] {"text":"Лучи солнца вынудили босса испариться...","italic":true,"color":"gold"}

bossbar remove oblivion:hunger

stopsound @a[tag=inbattlewithhunger] voice
scoreboard players set @a[tag=inbattlewithhunger] hungermusic 1
tag @a[tag=inbattlewithhunger] remove inbattlewithhunger
scoreboard players set hungeralive oblivion 0

kill @e[tag=obl.hungerstand]
kill @e[tag=obl.hungerstandline]
kill @e[tag=obl.hungerplayerstand]
kill @e[tag=obl.gianthungerdecor]
kill @e[tag=obl.hungerstandcenter]
kill @e[tag=obl.hungerhead]
kill @e[tag=obl.goodfood]
kill @e[tag=obl.cursedfood]
execute as @e[tag=hunger] at @s run tp @s ~ -10 ~
execute as @e[tag=hunger] at @s run tag @s remove hunger