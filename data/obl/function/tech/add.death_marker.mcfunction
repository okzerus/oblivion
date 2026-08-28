# Добавляет детектор смерти к мобам-траспортам в случае если их водитель умер (для спавнеров)
execute at @s run summon marker ~ ~ ~ {Tags:["obl.death_detector"]}
execute at @s run ride @n[type=marker,tag=obl.death_detector,limit=1] mount @s