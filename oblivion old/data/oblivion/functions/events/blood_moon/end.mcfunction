###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Кровавая луна заходит за горизонт...","italic":true,"color":"red"},{"text":"\n"}]

###   F U N C T I O N
scoreboard players set blood_moon oblivion 0
scoreboard players add blood_moon_count oblivion 1
scoreboard players set obl.isevent oblivion 0
scoreboard players set obl.isbadevent oblivion 0
execute if score devil_alive oblivion matches 1 run function oblivion:abilities/bosses/devil/cleanup/blood_moon_ended
# bossbar remove oblivion:devil
# bossbar remove nethermothron
# tag @a[tag=inbattlewithdevil] remove inbattlewithdevil
# kill @e[tag=obl.devilstand]
# kill @e[tag=obl.centralarrowstand]
# kill @e[tag=obl.arrowstand]
# kill @e[tag=obl.devilcubestand]
execute as @e[tag=obl.blood_mob] at @s run tp ~ -256 ~
execute as @e[tag=obl.blood_mob] at @s run kill @s

advancement grant @a[tag=obl.surviving.bm] only oblivion:advancements/events/survivebloodmoon
advancement grant @a[tag=obl.surviving.bm,scores={bloodmobs=25..,obl.death=0}] only oblivion:advancements/events/survivebloodmoonnodeath
advancement grant @a[tag=obl.surviving.bm,scores={bloodmobs=25..,obl.death=0,usedtotem=0}] only oblivion:advancements/events/survivebloodmoonnototems

tag @a remove obl.surviving.bm
tag @a remove obl.announced.bm

stopsound @a voice