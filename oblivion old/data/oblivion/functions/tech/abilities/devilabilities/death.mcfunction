tellraw @a {"text":"\u0414\u044c\u044f\u0432\u043e\u043b \u0431\u044b\u043b \u043f\u043e\u0431\u0435\u0436\u0434\u0451\u043d!","italic":true,"color":"dark_red"}
tellraw @a {"text":"\u041b\u0443\u043d\u0430 \u0441\u043c\u044b\u0432\u0430\u0435\u0442 \u0441 \u0441\u0435\u0431\u044f \u044f\u0440\u043a\u0438\u0439 \u043e\u0442\u0442\u0435\u043d\u043e\u043a \u043a\u0440\u043e\u0432\u0438..","italic":true,"color":"red"}

advancement grant @a[tag=inbattlewithdevil] only oblivion:advancements/mobs/devil
execute as @a[tag=inbattlewithdevil,scores={obl.difficulty=8}] at @s run function oblivion:tech/difficulty/levelup/9

bossbar remove oblivion:devil
bossbar remove nethermothron
stopsound @a[tag=inbattlewithdevil] voice
execute as @a[tag=inbattlewithdevil] run scoreboard players set @s bloodmusic 91
xp add @a[tag=inbattlewithdevil] 4000 points
tag @a[tag=inbattlewithdevil] remove inbattlewithdevil
scoreboard players set devilalive oblivion 0

scoreboard players set bloodmoon oblivion 0
execute as @e[tag=bloodmob] at @s run tp ~ -256 ~
execute as @e[tag=bloodmob] at @s run kill @s
scoreboard players add bloodmooncount oblivion 1

advancement grant @a[tag=bloodmoonsurviving] only oblivion:advancements/events/survivebloodmoon
advancement grant @a[tag=bloodmoonsurviving,scores={bloodmobs=25..,obl.death=0}] only oblivion:advancements/events/survivebloodmoonnodeath
advancement grant @a[tag=bloodmoonsurviving,scores={bloodmobs=25..,obl.death=0,usedtotem=0}] only oblivion:advancements/events/survivebloodmoonnototems

gamerule naturalRegeneration true
gamerule mobGriefing true

kill @e[tag=obl.devilstand]
kill @e[tag=obl.centralarrowstand]
kill @e[tag=obl.arrowstand]
kill @e[tag=obl.devilcubestand]

scoreboard players set nextnightisbloodmoon oblivion 0
scoreboard players set nextnightispearlmoon oblivion 0
scoreboard players set nextnightisxmasmoon oblivion 0

scoreboard players set obl.isevent oblivion 0
scoreboard players set obl.isbadevent oblivion 0