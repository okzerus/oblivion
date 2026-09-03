tellraw @a {"text":"Голод был побеждён!","italic":true,"color":"gold"}

advancement grant @a[tag=inbattlewithhunger] only oblivion:advancements/mobs/hunger
execute as @a[tag=inbattlewithhunger,scores={obl.difficulty=6}] at @s run function oblivion:tech/difficulty/levelup/7

bossbar remove oblivion:hunger

stopsound @a[tag=inbattlewithhunger] voice
scoreboard players set @a[tag=inbattlewithhunger] hungermusic 1
xp add @a[tag=inbattlewithhunger] 2500 points
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