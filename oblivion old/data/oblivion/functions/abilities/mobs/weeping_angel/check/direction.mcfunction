###   S T A R T
tag @s add obl.temp.searching

###   C H E C K   I N   F O V
execute positioned ^ ^ ^30 run tag @e[type=husk,tag=obl.weeping_angel,distance=..27] add obl.temp.detected
execute positioned ^9 ^ ^26 run tag @e[type=husk,tag=obl.weeping_angel,distance=..20] add obl.temp.detected
execute positioned ^-9 ^ ^26 run tag @e[type=husk,tag=obl.weeping_angel,distance=..20] add obl.temp.detected
execute positioned ^ ^9 ^26 run tag @e[type=husk,tag=obl.weeping_angel,distance=..20] add obl.temp.detected
execute positioned ^ ^-9 ^26 run tag @e[type=husk,tag=obl.weeping_angel,distance=..20] add obl.temp.detected
execute positioned ^3 ^ ^20 run tag @e[type=husk,tag=obl.weeping_angel,distance=..16] add obl.temp.detected
execute positioned ^-3 ^ ^20 run tag @e[type=husk,tag=obl.weeping_angel,distance=..16] add obl.temp.detected
execute positioned ^ ^3 ^20 run tag @e[type=husk,tag=obl.weeping_angel,distance=..16] add obl.temp.detected
execute positioned ^ ^-3 ^20 run tag @e[type=husk,tag=obl.weeping_angel,distance=..16] add obl.temp.detected
execute positioned ^ ^ ^6.5 run tag @e[type=husk,tag=obl.weeping_angel,distance=..6.5] add obl.temp.detected
execute positioned ^ ^ ^3 run tag @e[type=husk,tag=obl.weeping_angel,distance=..3] add obl.temp.detected

###   R E S U L T
execute as @e[type=husk,tag=obl.weeping_angel,tag=obl.temp.detected,tag=!obl.weeping_angel.dont_move,tag=!obl.weeping_angel.attacked,tag=!obl.weeping_angel.broken,tag=!obl.weeping_angel.freeze,tag=!obl.weeping_angel.found] at @s run function oblivion:abilities/mobs/weeping_angel/visibility/found

###   E N D
tag @s remove obl.temp.searching