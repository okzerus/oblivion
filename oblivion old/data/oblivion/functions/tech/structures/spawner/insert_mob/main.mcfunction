tag @s add obl.init

execute if entity @s[tag=obl.spawner.zombie] run function oblivion:tech/dungeons/insert_mob/zombie
execute if entity @s[tag=obl.spawner.baby_zombie] run function oblivion:tech/dungeons/insert_mob/baby_zombie
execute if entity @s[tag=obl.spawner.skeleton] run function oblivion:tech/dungeons/insert_mob/skeleton
execute if entity @s[tag=obl.spawner.sword_skeleton] run function oblivion:tech/dungeons/insert_mob/sword_skeleton
execute if entity @s[tag=obl.spawner.drowned] run function oblivion:tech/dungeons/insert_mob/drowned
execute if entity @s[tag=obl.spawner.stray] run function oblivion:tech/dungeons/insert_mob/stray
execute if entity @s[tag=obl.spawner.witch] run function oblivion:tech/dungeons/insert_mob/witch
execute if entity @s[tag=obl.spawner.spider] run function oblivion:tech/dungeons/insert_mob/spider
execute if entity @s[tag=obl.spawner.cave_spider] run function oblivion:tech/dungeons/insert_mob/cave_spider
execute if entity @s[tag=obl.spawner.vex] run function oblivion:tech/dungeons/insert_mob/vex

execute positioned ~ ~.6 ~ run kill @e[type=text_display,tag=obl.spawner_pause,limit=1,sort=nearest,distance=..1]