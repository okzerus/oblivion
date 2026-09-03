execute as @a[tag=inbattlewithdevil] at @s run spreadplayers ~ ~ 0 8 false @e[type=minecraft:armor_stand,limit=5,sort=nearest,tag=!obl.centralarrowstand,tag=obl.arrowstand]
execute as @e[type=minecraft:armor_stand,tag=obl.arrowstand] at @s run tp @s ~ ~-3 ~
execute as @e[tag=inbattlewithdevil] at @s run tp @e[type=armor_stand,tag=obl.centralarrowstand,limit=1,sort=nearest] ~ ~-3 ~
execute at @e[type=armor_stand,tag=obl.arrowstand] run summon minecraft:arrow ~ ~30 ~ {Motion:[0.0,-2.0,0.0],Tags:["hell","obl.devilarrow2"]}