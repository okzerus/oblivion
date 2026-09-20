scoreboard players add @s obl.parry.fall_raycast 1

## Нашли твёрдый блок — взрываемся здесь
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
## Ничего не нашли, лимит (50 шагов * 0.1 = 5 блоков) не достигнут — шагаем дальше
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #obl:non_solid if score @s obl.parry.fall_raycast matches ..49 run function obl:tech/parrying/fall/raycast.step
## Лимит достигнут, блок так и не найден — взрываемся на максимальной дистанции
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #obl:non_solid unless score @s obl.parry.fall_raycast matches ..49 run function obl:tech/parrying/fall/explode
