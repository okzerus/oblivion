scoreboard players add #raycast obl 1
particle minecraft:crit ~ ~ ~ 0 0 0 0.2 2

## Нашли твёрдый блок - взрываемся здесь
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
## Ничего не нашли - шагаем дальше
execute unless entity @s[tag=obl.temp.end_raycast] positioned ^ ^ ^0.25 if score #raycast obl matches ..24 run function obl:tech/parrying/fall/raycast
## Ничего не нашли, до лимита дошли - взрываемся в конце
execute unless entity @s[tag=obl.temp.end_raycast] positioned ^ ^ ^0.25 if score #raycast obl matches 25 run function obl:tech/parrying/fall/explode